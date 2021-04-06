cask "electerm" do
  version "1.12.9"
  sha256 "4fed71664f73644ec9c90f4f3532f68626ac83cf7eddb757f4dae55de2bee00a"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
