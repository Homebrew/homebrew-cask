cask "electerm" do
  version "1.10.14"
  sha256 "437ce69b3db05bf6077292076666cfd9d4b52f24db8085bb37059517a9a387ae"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  livecheck do
    url :url
    strategy :git
  end

  app "electerm.app"
end
