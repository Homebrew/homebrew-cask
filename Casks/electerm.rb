cask "electerm" do
  version "1.14.0"
  sha256 "4a12d769792d3f4a8b314de2ff3323650ac9c673688f7d5b904790ea0ef234ef"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-x64.dmg"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
