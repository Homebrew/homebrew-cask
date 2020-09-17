cask "electerm" do
  version "1.4.4"
  sha256 "c23aaf4090e65172363f7698d28fcf9cd79cbb9ae6bf63be27f670a94d5e6857"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
