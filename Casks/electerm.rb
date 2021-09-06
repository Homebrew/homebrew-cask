cask "electerm" do
  version "1.16.5"
  sha256 "0bb6d4ba1a1513b598a5899cd21faac0d7f28a025299175a9467be76a996db0b"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-x64.dmg"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
