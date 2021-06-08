cask "electronmail" do
  version "4.12.2"
  sha256 :no_check

  url "https://github.com/vladimiry/ElectronMail/releases/download/v4.12.2/electron-mail-4.12.2-mac-x64.dmg"
  name "ElectronMail"
  desc "Unofficial ProtonMail Desktop App"
  homepage "https://github.com/vladimiry/ElectronMail"

  app "ElectronMail.app"
end
