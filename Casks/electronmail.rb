cask "electronmail" do
  version "4.12.1"
  sha256 "86b154bfe2713394bae107ef1c027e1c0922ff5aaa8b191ce15571121b9deddb"

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac.dmg"
  name "ElectronMail"
  desc "Unofficial ProtonMail Desktop App"
  homepage "https://github.com/vladimiry/ElectronMail"

  app "ElectronMail.app"
end
