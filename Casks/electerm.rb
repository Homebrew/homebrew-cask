cask "electerm" do
  version "1.7.10"
  sha256 "31114aae500625043aa13a0ebf1d4601e2b2cdbd4e9c401a622cfdae7018dd64"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
