cask "electerm" do
  version "1.13.4"
  sha256 "1f192bc7570fcd0e8b77b746547cde0afcb23a8d875bbd1212b4fb4ba1321ece"

  url "https://github.com/electerm/electerm/releases/download/#{version}/electerm-#{version}-mac.dmg"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
