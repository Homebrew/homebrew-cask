cask "picview" do
  arch arm: "arm64", intel: "x64"

  version "3.2.0.1"
  sha256 arm:   "fc5c1dde873a2613dd903fd0d449f1a276665aa284f721ff60dae6b0cc981c37",
         intel: "915d1e2119c0ac842c98c5210ebe809e7bfb1857aa0b29cf31a4fa2d7627408d"

  url "https://github.com/Ruben2776/PicView/releases/download/#{version}/PicView-#{version}-macOS-#{arch}.dmg",
      verified: "github.com/Ruben2776/PicView/"
  name "PicView"
  desc "Picture viewer"
  homepage "https://picview.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "PicView.app"

  zap trash: [
    "~/Library/Application Support/Ruben2776/PicView",
    "~/Library/Preferences/com.ruben2776.picview.plist",
  ]
end
