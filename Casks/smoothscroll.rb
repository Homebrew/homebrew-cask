cask "smoothscroll" do
  version "1.4.11"
  sha256 "eff35a31f2de880476e6835526ba8eededd26fbaf9a2e9833d299ed7f91287b6"

  url "https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip"
  appcast "https://updater.smoothscroll.net/mac/updater.xml"
  name "SmoothScroll"
  homepage "https://www.smoothscroll.net/"

  depends_on macos: ">= :sierra"

  app "SmoothScroll.app"
end
