cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.6"
  sha256 arm:   "7489cb9331b863434777f2c8579421f4169168bf27be30d423253e969ea1a087",
         intel: "e0accf2ea2341596d0f7d6ba1ad21e1b318f11a93eb71ffbcd9770538ad8d35d"

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
