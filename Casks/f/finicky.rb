cask "finicky" do
  version "4.0.0"
  sha256 "f6d4d184c98574dacb5d564f41892fea8a82cbaf2851c5dcaca730168a0a9e2a"

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

  zap trash: "~/Library/Preferences/net.kassett.finicky.plist"
end
