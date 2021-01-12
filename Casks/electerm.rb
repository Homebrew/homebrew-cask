cask "electerm" do
  version "1.11.5"
  sha256 "6fb8f2f5c59db5bf87778b71aff7026274c6d8471c85a465a688b92438dd47d7"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
