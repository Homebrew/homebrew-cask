cask "picview" do
  arch arm: "arm64", intel: "x64"

  version "4.2.0"
  sha256 arm:   "50032ae50d097a6bd1b0d57d2be15dc1448a03fade07193f0be981849b821b95",
         intel: "8f6794a1ac87356d10a25002e78a9b6fbf1369f49b6acd8ef3e3f413201da566"

  url "https://github.com/Ruben2776/PicView/releases/download/#{version}/PicView-#{version}-macOS-#{arch}.dmg",
      verified: "github.com/Ruben2776/PicView/"
  name "PicView"
  desc "Picture viewer"
  homepage "https://picview.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "PicView.app"

  zap trash: [
    "~/Library/Application Support/Ruben2776/PicView",
    "~/Library/Preferences/com.ruben2776.picview.plist",
  ]
end
