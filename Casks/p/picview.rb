cask "picview" do
  arch arm: "arm64", intel: "x64"

  version "5.0.1"
  sha256 arm:   "41652d998f08b715b9d529537d752a30752e47f548e5ea144f727dd7d7507da3",
         intel: "6b541ba5bc43673dc73054230f2f439a081c611d6f77424a023818bbcc9866c2"

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
