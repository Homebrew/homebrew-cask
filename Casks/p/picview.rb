cask "picview" do
  arch arm: "arm64", intel: "x64"

  version "5.0.4"
  sha256 arm:   "75062fe241a29c3190beec107e9c06cfdf04efe7fb250da745e0af27684de195",
         intel: "571d462df9bf7bf48ab332d97c8e69500ea9042112c6a42a762572fcb6feceda"

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
