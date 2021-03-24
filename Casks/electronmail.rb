cask "electronmail" do
  version "4.11.0"
  sha256 "b13faaf936382a586274f023ece0b161a2939b62ab05cf28c812f4c48c221da0"

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac.dmg"
  name "ElectronMail"
  desc "Unofficial ProtonMail Desktop App"
  homepage "https://github.com/vladimiry/ElectronMail"

  app "ElectronMail.app"
end
