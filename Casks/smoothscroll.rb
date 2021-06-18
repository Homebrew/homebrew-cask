cask "smoothscroll" do
  version "1.5.0,10500.1"
  sha256 :no_check

  url "https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip"
  name "SmoothScroll"
  homepage "https://www.smoothscroll.net/"

  livecheck do
    url "https://updater.smoothscroll.net/mac/updater.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "SmoothScroll.app"
end
