cask "picview" do
  arch arm: "arm64", intel: "x64"

  version "5.0.3"
  sha256 arm:   "77bc3c98b9c9da1b1847d0780aac0a8de95a40366a0c2ce24f589a4a57697907",
         intel: "0d747691bb46df42ae7a8632ee555e3df208ee3651c707bad5bedda0d8b9f0dc"

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
