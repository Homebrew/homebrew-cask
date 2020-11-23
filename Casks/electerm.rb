cask "electerm" do
  version "1.9.14"
  sha256 "268da7af600354566867351e22bc85481a02a094d142d6a34c2684c1fd64df5a"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
