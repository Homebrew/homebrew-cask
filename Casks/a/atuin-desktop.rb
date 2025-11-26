cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.2"
  sha256 arm:   "6e6267aed2a9616cc89cb13650dc698a6305026a5a9a7f467ac0d365a0765228",
         intel: "bee992b1a33f6537286ab230371d1ecfd3afde4254392b511c8375a5d6c047ff"

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
