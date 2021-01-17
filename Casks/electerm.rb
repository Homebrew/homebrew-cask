cask "electerm" do
  version "1.11.6"
  sha256 "d3488cb7d9072261986048042a5740536b5769503e81bbb63db65246a2929017"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
