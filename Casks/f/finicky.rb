cask "finicky" do
  version "4.2.1"
  sha256 "4b6008735a2885d0ae6135ba0eaefa3e0fc4e8d84d0b6166bd79cc732e6091cc"

  url "https://github.com/johnste/finicky/releases/download/v#{version}/Finicky.dmg"
  name "Finicky"
  desc "Utility for customizing which browser to start"
  homepage "https://github.com/johnste/finicky"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Finicky.app"

  zap trash: "~/Library/Preferences/se.johnste.finicky.plist"
end
