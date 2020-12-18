cask "electronmail" do
  version "4.9.2"
  sha256 "f768bc14fb7c937650eaac603b68ba97163972b2febfefa135d2b2da85c30a18"

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac-mojave.dmg"
  appcast "https://github.com/vladimiry/ElectronMail/releases.atom"
  name "ElectronMail"
  desc "Unofficial ProtonMail Desktop App"
  homepage "https://github.com/vladimiry/ElectronMail"

  app "ElectronMail.app"
end
