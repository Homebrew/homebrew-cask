cask "electerm" do
  version "1.5.4"
  sha256 "da4b1d59ee494152bc57c8bb2dfa2b0e69ec3beebeca2d788b135900572164df"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
