cask "pictureview" do
  version "2.3.4"
  sha256 "3975d6e10f8e04e4339eadeafd0af511611fd9ba852d4c3e724dbbb3d811abce"

  url "https://wl879.github.io/apps/picview/PictureView_#{version}.dmg"
  name "Picture View"
  desc "Image viewer"
  homepage "https://wl879.github.io/apps/picview/index.html"

  livecheck do
    url "https://raw.githubusercontent.com/wl879/wl879.github.io/master/apps/picview/appcase.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :mojave"

  app "PictureView.app"

  zap trash: [
    "~/Library/Preferences/com.zouke.PictureView.plist",
    "~/Library/Saved Application State/com.zouke.PictureView.savedState",
  ]
end
