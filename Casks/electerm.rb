cask "electerm" do
  version "1.11.11"
  sha256 "afbc33e46d33637f48f864c35bc11dcc3340bd8257a84c97d5cfd806f70fd2df"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
