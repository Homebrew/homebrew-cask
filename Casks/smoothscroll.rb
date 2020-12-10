cask "smoothscroll" do
  version "1.5.0"
  sha256 :no_check

  url "https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip"
  appcast "https://updater.smoothscroll.net/mac/updater.xml"
  name "SmoothScroll"
  homepage "https://www.smoothscroll.net/"

  depends_on macos: ">= :sierra"

  app "SmoothScroll.app"
end
