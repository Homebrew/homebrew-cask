cask "picview" do
  arch arm: "arm64", intel: "x64"

  version "5.1.1"
  sha256 arm:   "8986be39e23360d4e53a6183fcc267f03f1bd142d1f37e4db1922236e6903141",
         intel: "50b03bed805da9ab2ac19c614ae3ba76d070d757f55895f74250013a274bc31b"

  url "https://github.com/Ruben2776/PicView/releases/download/#{version}/PicView-#{version}-macOS-#{arch}.dmg"
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
