cask "electerm" do
  version "1.9.24"
  sha256 "9e538c4618dc98195fd0cb609686c8fe71af8cde564e4946f18ce001ad5150a9"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
