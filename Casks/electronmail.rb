cask "electronmail" do
  version "4.10.2"
  sha256 "4bcff8555b7217e6339c281a4e36d776ee50fd43207326161e5edee6f4e83337"

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac.dmg"
  appcast "https://github.com/vladimiry/ElectronMail/releases.atom"
  name "ElectronMail"
  desc "Unofficial ProtonMail Desktop App"
  homepage "https://github.com/vladimiry/ElectronMail"

  app "ElectronMail.app"
end
