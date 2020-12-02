cask "electerm" do
  version "1.10.0"
  sha256 "ee2d292cf962a1985f588350e1ebf09e132f7a7b6423a104364d92266fbad5df"

  url "https://github.com/electerm/electerm/releases/download/#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
