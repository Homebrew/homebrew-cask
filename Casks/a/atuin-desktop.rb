cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.9"
  sha256 arm:   "615c485123d6103db422cb6497630952954c12aace4a9f44d4803833576704ed",
         intel: "ea6eddb8453d09eb69b3f2d41f4afbf3ef47fb3932a4d3fe753608752da29cd0"

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
