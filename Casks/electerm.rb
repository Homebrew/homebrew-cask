cask "electerm" do
  version "1.16.1"
  sha256 "4f3dda65ca909add7f2657d7c6a2dca54801808dfdbd572825c8257926e32da8"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-x64.dmg"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
