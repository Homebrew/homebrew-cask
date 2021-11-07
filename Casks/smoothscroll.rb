cask "smoothscroll" do
  version "1.5.3,10503.1"
  sha256 :no_check

  url "https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip"
  name "SmoothScroll"
  desc "Smooth mouse scrolling utility"
  homepage "https://www.smoothscroll.net/"

  livecheck do
    url "https://updater.smoothscroll.net/mac/updater.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "SmoothScroll.app"
end
