cask "picview" do
  arch arm: "arm64", intel: "x64"

  version "4.1.1"
  sha256 arm:   "c9cde9f35073962dd603c93daaacfd9dbf1f44473b62b44b4fff1d1be3e2287c",
         intel: "3b15078b3d03e0c6f6f0cabbef9142b41f3cf2b516da4a36c5eab3cd0fe73beb"

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
