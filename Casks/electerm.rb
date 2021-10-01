cask "electerm" do
  version "1.16.11"
  sha256 "c80fe99439d6131a8a04dd388a8267765d0eaca9339399d8c7883be5ef9c78be"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-x64.dmg"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
