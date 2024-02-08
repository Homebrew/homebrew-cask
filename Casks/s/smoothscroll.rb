cask "smoothscroll" do
  version "1.6.0"
  sha256 :no_check

  url "https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip"
  name "SmoothScroll"
  desc "Smooth mouse scrolling utility"
  homepage "https://www.smoothscroll.net/"

  livecheck do
    url "https://updater.smoothscroll.net/mac/updater.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  app "SmoothScroll.app"
end
