cask "electerm" do
  version "1.7.17"
  sha256 "25cc15d5e26e372ae800180ad68899c95bf00cea1999cf7c23b2de228f173bee"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
