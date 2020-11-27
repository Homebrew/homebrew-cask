cask "electerm" do
  version "1.9.27"
  sha256 "ddb84474c7aee98226e27df1c8e70b33e097f5d5c093c52720116974ebfabc5b"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
