cask "picview" do
  arch arm: "arm64", intel: "x64"

  version "5.2.0.1"
  sha256 arm:   "1cf7b147ccd6f795f986b98c97bf6920b455ff5a75fec457c993b7e7c61ab55c",
         intel: "bee21ddac11fc1fe51ac4d0c3df22af7b7cd8578bced11f5a64651404af22bbd"

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
