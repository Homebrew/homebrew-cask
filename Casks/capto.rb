cask "capto" do
  version "1.2.36,1001.2.36002"
  sha256 :no_check

  url "https://d3l6g06uqih57x.cloudfront.net/Captomac/webstore/Capto.dmg",
      verified: "d3l6g06uqih57x.cloudfront.net/Captomac/"
  name "Capto"
  desc "Screen capture/recorder and video editor"
  homepage "https://www.globaldelight.com/capto/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Capto.app"
end
