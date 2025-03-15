cask "librewolf" do
  arch arm: "arm64", intel: "x86_64"

  version "136.0-2"
  sha256 arm:   "307d8e16123835f672cc1c6940300768e11cb9fb992454a75c3a290d505709b2",
         intel: "b059803bd1d2146c7272225721ce705a45542bb7935f6367618fed0a7531b7b5"

  url "https://gitlab.com/api/v4/projects/44042130/packages/generic/librewolf/#{version}/librewolf-#{version}-macos-#{arch}-package.dmg",
      verified: "gitlab.com/api/v4/projects/44042130/packages/generic/librewolf/"
  name "LibreWolf"
  desc "Web browser"
  homepage "https://librewolf.net/"

  livecheck do
    url "https://gitlab.com/librewolf-community/browser/bsys6.git"
    # Version is `<firefox_version>-<librewolf_release>`, e.g. `136.0.1-1`
    regex(/^(?<firefox_version>\d+(?:\.\d+)+)-(?<librewolf_release>\d+)/i)
    strategy :git do |tags, regex|
      tags.filter_map do |tag|
        match = tag.match(regex)
        next unless match

        # Normalize Firefox version to 3 parts, e.g. `136.0`, becomes `136.0.0`.
        # This ensures the LibreWolf release number is always compared separately,
        # so that `136.0-2` is not newer than `136.0.1-1`.
        firefox_version_parts = match[:firefox_version].split(".")
        firefox_version_parts << "0" while firefox_version_parts.size < 3
        "#{firefox_version_parts.join(".")}-#{match[:librewolf_release]}"
      end
    end
  end

  depends_on macos: ">= :catalina"

  app "LibreWolf.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/librewolf.wrapper.sh"
  binary shimscript, target: "librewolf"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/LibreWolf.app/Contents/MacOS/librewolf' "$@"
    EOS
  end

  zap trash: [
    "~/.librewolf",
    "~/Library/Application Support/LibreWolf",
    "~/Library/Caches/LibreWolf Community",
    "~/Library/Caches/LibreWolf",
    "~/Library/Preferences/io.gitlab.librewolf-community.librewolf.plist",
    "~/Library/Saved Application State/io.gitlab.librewolf-community.librewolf.savedState",
  ]
end
