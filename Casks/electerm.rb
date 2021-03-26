cask "electerm" do
  version "1.12.7"
  sha256 "267688bf3c1fa30064435f54e529133a80ca8245155d28a32c4918a9b3e794fc"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
