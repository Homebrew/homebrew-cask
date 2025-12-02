cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.4"
  sha256 arm:   "74b9057eaf410e7ff1378162684e1318808d349912da0e227c5b044356fa09b5",
         intel: "6491f8826b19ef5d05a58432d9873b9d49ba5d0cb8a276700be1bb6af41d2b78"

  url "https://github.com/atuinsh/desktop/releases/download/v#{version}/Atuin_#{version}_#{arch}.dmg",
      verified: "github.com/atuinsh/desktop/"
  name "Atuin Desktop"
  desc "Runbook editor for terminal workflows"
  homepage "https://atuin.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Atuin.app"

  uninstall quit: "sh.atuin.app"

  zap trash: [
    "~/Library/Application Support/sh.atuin.app",
    "~/Library/Caches/sh.atuin.app",
    "~/Library/Preferences/sh.atuin.app.plist",
    "~/Library/WebKit/sh.atuin.app",
  ]
end
