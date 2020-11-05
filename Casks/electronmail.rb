cask "electronmail" do
  version "4.9.0"
  sha256 "e6c46261382a957437a158ff2c2bce95637da4b9b791e2deae9dbd16530b929c"

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac-mojave.dmg"
  appcast "https://github.com/vladimiry/ElectronMail/releases.atom"
  name "ElectronMail"
  desc "Unofficial ProtonMail Desktop App"
  homepage "https://github.com/vladimiry/ElectronMail"

  app "ElectronMail.app"
end
