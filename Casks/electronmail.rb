cask "electronmail" do
  version "4.10.0"
  sha256 "775ac7c0f7c8103a9a4969020a4966c14c8d7e61ba0bae5dea5454ebda4aa50e"

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac.dmg"
  appcast "https://github.com/vladimiry/ElectronMail/releases.atom"
  name "ElectronMail"
  desc "Unofficial ProtonMail Desktop App"
  homepage "https://github.com/vladimiry/ElectronMail"

  app "ElectronMail.app"
end
