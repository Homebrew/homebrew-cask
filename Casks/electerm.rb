cask "electerm" do
  version "1.9.0"
  sha256 "ec6285113bd878d83932ef9e0ac70501d8381444d7c5302e5c83266278e4e65b"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
