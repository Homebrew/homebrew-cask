cask "electerm" do
  version "1.5.0"
  sha256 "b5efd1dfd9dc65c5269e6b3a120395ba68839cc1d1b7bcb1822fc3b32b4be4ce"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
