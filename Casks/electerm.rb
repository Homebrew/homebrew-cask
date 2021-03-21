cask "electerm" do
  version "1.12.6"
  sha256 "35ec0e0fc3fedea42932de316b08bb4a247075257e1ee4e403c2f26af06efff1"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
