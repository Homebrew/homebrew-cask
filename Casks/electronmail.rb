cask "electronmail" do
  version "4.7.0"
  sha256 "94292f2b9ed56aa1bc344c5f807342b2c3b4cd1366c62d4efc5365671991d018"

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac-mojave.dmg"
  appcast "https://github.com/vladimiry/ElectronMail/releases.atom"
  name "ElectronMail"
  homepage "https://github.com/vladimiry/ElectronMail"

  app "ElectronMail.app"
end
