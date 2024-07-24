cask "ibackup" do
  version "7.6"
  sha256 "97e34fd79a16193161e873e2eb77c32597dedb5b63d44ed48a61c40af8aba8e2"

  url "https://www.grapefruit.ch/iBackup/versions/iBackup%20#{version.major}.x/iBackup%20#{version}.dmg"
  name "iBackup"
  desc "Backup utility"
  homepage "https://www.grapefruit.ch/iBackup/"

  disable! date: "2024-07-14", because: "is 32-bit only"

  app "iBackup.app"
end
