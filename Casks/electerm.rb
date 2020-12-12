cask "electerm" do
  version "1.10.9"
  sha256 "507af0ca6a4c79eae28d0710f6a2c893c26590bdbbb173d4d3ad71d668de7338"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
