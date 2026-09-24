cask "picview" do
  arch arm: "arm64", intel: "x64"

  version "5.1.3"
  sha256 arm:   "fcea7287f58e818f6a1fa67f728877ac933cfcd0eb8a4b1932c9f31c02e7093e",
         intel: "3789531a30aa0400b1fe310df912d54bf872c91f79175db7b86a3761fcb23a9c"

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
