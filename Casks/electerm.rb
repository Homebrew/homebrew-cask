cask "electerm" do
  version "1.16.21"
  sha256 "2632ca9fab199af5df7ee57add42442d3fb7883d03c556288f9debb7f6e59e35"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-x64.dmg"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
