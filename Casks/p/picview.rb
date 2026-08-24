cask "picview" do
  arch arm: "arm64", intel: "x64"

  version "5.0.5"
  sha256 arm:   "e1314f40af7c934dada129bf91403535f834d08a0213272702f3e34aad1ec938",
         intel: "8b30f2926495932a56b238f2afdf8464be1e97041656ae40670d3c36934c5c96"

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
