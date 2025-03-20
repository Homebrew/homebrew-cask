cask "librewolf" do
  arch arm: "arm64", intel: "x86_64"

  version "136.0.2,1"
  sha256 arm:   "38c1d16ae4e6441d47e31e213ed2c374fe78d0663ecc761114c4a1dbbf266194",
         intel: "f0fbe2f51d7f87fc6d972b704093f3c468e9ec1399b61604c6e4966640aa592f"

  url "https://gitlab.com/api/v4/projects/44042130/packages/generic/librewolf/#{version.tr(",", "-")}/librewolf-#{version.tr(",", "-")}-macos-#{arch}-package.dmg",
      verified: "gitlab.com/api/v4/projects/44042130/packages/generic/librewolf/"
  name "LibreWolf"
  desc "Web browser"
  homepage "https://librewolf.net/"

  livecheck do
    url "https://gitlab.com/librewolf-community/browser/bsys6.git"
    regex(/^v?(\d+(?:[.-]\d+)+)$/i)
    strategy :git do |tags, regex|
      tags.map { |tag| tag[regex, 1]&.tr("-", ",") }
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
