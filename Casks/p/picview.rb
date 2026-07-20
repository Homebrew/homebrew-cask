cask "picview" do
  arch arm: "arm64", intel: "x64"

  version "5.0.0"
  sha256 arm:   "b09c47db6094eb4b145df2bf417f9f4c5fb0baee6d30e5b81545a9139b87fc9a",
         intel: "b8c16adde6d2125bb7d0fe4ac3dc2d3600a565d79c45cabe5aaf33953475eecc"

  url "https://github.com/Ruben2776/PicView/releases/download/#{version}/PicView-#{version}-macOS-#{arch}.dmg",
      verified: "github.com/Ruben2776/PicView/"
  name "PicView"
  desc "Picture viewer"
  homepage "https://picview.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "PicView.app"

  zap trash: [
    "~/Library/Application Support/Ruben2776/PicView",
    "~/Library/Preferences/com.ruben2776.picview.plist",
  ]
end
