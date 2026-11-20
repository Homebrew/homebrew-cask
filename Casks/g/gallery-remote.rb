cask "gallery-remote" do
  version "1.0.3"
  sha256 "0bdc00c57dcab2511ee0dba490796a77ea7526535626719ea764b79e2d4dc546"

  url "https://www.ntwind.com/files/GalleryRemote_#{version}-mac.dmg"
  name "Gallery Remote"
  desc "Present photo slideshows on devices over a local network"
  homepage "https://www.ntwind.com/remote/gallery.html"

  livecheck do
    url "https://www.ntwind.com/download/GalleryRemote_latest-mac.dmg"
    strategy :header_match
    regex(/GalleryRemote[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  depends_on :macos

  app "Gallery Remote.app"

  uninstall quit: "com.ntwind.remote.gallery"

  zap trash: [
    "~/Library/Application Scripts/com.ntwind.remote.gallery",
    "~/Library/Application Scripts/com.ntwind.remote.gallery-LaunchAtLoginHelper",
    "~/Library/Containers/com.ntwind.remote.gallery",
    "~/Library/Containers/com.ntwind.remote.gallery-LaunchAtLoginHelper",
  ]
end
