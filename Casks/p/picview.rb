cask "picview" do
  arch arm: "arm64", intel: "x64"

  version "4.1.2"
  sha256 arm:   "d0109cddcdd132858c04b43716310ff0a87588add4303f49290f9260f39714b5",
         intel: "f0c8cef205b8ee2421ffe120e71180388f82c362ca7debb5d92c6922874dade6"

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
