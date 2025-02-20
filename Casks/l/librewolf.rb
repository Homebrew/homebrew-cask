cask "librewolf" do
  arch arm: "arm64", intel: "x86_64"

  version "135.0.1-1"
  sha256 arm:   "8c11e0d423b37794e4acb6453ffe15207e660954d9cff85366d710949b269981",
         intel: "4eb68ee7f52bdca924edafb79627b1acc57a47ada2e4b5b4d067f3b543a9d7f5"

  url "https://gitlab.com/api/v4/projects/44042130/packages/generic/librewolf/#{version}/librewolf-#{version}-macos-#{arch}-package.dmg",
      verified: "gitlab.com/api/v4/projects/44042130/packages/generic/librewolf/"
  name "LibreWolf"
  desc "Web browser"
  homepage "https://librewolf.net/"

  livecheck do
    url "https://gitlab.com/librewolf-community/browser/bsys6.git"
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
