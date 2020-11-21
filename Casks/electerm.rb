cask "electerm" do
  version "1.9.7"
  sha256 "1bf31503e90986d6ffba1a019a820b80dc7660459220ff3f1088510d88db016a"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
