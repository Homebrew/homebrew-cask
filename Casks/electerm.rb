cask "electerm" do
  version "1.12.19"
  sha256 "62736e3ec7cd9b35e2d30b0f959bffc3686cc35e8697236677c50ce71b11e318"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
