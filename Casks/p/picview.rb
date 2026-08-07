cask "picview" do
  arch arm: "arm64", intel: "x64"

  version "5.0.2"
  sha256 arm:   "07627e63fc66bccf01be1d4ee0a40f288f77e305f70e04135f1a21d7c5153b46",
         intel: "f63aebbdb90ce4c6419f1ae36b6e807255849334d1015d4f39f5749bf3b0ff0a"

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
