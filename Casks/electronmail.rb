cask "electronmail" do
  version "4.8.0"
  sha256 "2131d83344a6911aa11db13fc1ccf06c11fff5bcdf5505656d0104bbd22fb034"

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac-mojave.dmg"
  appcast "https://github.com/vladimiry/ElectronMail/releases.atom"
  name "ElectronMail"
  desc "Unofficial ProtonMail Desktop App"
  homepage "https://github.com/vladimiry/ElectronMail"

  app "ElectronMail.app"
end
