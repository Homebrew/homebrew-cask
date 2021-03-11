cask "electerm" do
  version "1.12.1"
  sha256 "9539486fc4ffd533ce76f65038e63e4ad6a07f3a2cec2e91f3128927e52e9b19"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
