cask "connectmenow" do
  version "3.0.7"
  sha256 "6bc729e41788b43fa9f0629e114e23f51dcc950d984341e8fb43b63eedabc124"

  url "https://www.tweaking4all.com/downloads/network/ConnectMeNow-v#{version}-macOS-64bit.dmg"
  appcast "https://www.tweaking4all.com/os-tips-and-tricks/macosx-tips-and-tricks/connectmenow-v3"
  name "ConnectMeNow"
  homepage "https://www.tweaking4all.com/os-tips-and-tricks/macosx-tips-and-tricks/connectmenow-v3/"

  app "ConnectMeNow.app"
end
