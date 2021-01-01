cask "keeper-password-manager" do
  version "15.0.12,202012281041"
  sha256 :no_check

  url "https://keepersecurity.com/desktop_electron/Darwin/KeeperSetup.dmg"
  name "Keeper Password Manager"
  homepage "https://keepersecurity.com/"

  app "Keeper Password Manager.app"
end
