cask "picview" do
  arch arm: "arm64", intel: "x64"

  version "5.0.6"
  sha256 arm:   "1adac9ee3d19b02b56c9ce3e47322dba4ea735df08633033a6190aee24e49402",
         intel: "3a699a1df05ceaa9bbfc02ff25933a4999724c9ad9e251383de1222b30a9b5f3"

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
