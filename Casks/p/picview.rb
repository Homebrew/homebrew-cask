cask "picview" do
  arch arm: "arm64", intel: "x64"

  version "5.1.0"
  sha256 arm:   "d115321d41088e12a9e067f37658eaeb5c4ef2c56f8b450f78105feafa8aaf37",
         intel: "60eb3c9ef1d6e31daf7ec4d110dc3bd650f4d74652a41b9d9f51f9e91daa416c"

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
