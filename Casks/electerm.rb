cask "electerm" do
  version "1.5.15"
  sha256 "9cc2c22b5d608fe82864e47db57ff15c30b76b96dbf1c640a1b431bf7d051eb3"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
