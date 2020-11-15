cask "smoothscroll" do
  version "1.5.0"
  sha256 "03b2e96516c71b3c39e80f67aaca11260ae58517a7ca53d613c3a0e068e6ce04"

  url "https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip"
  appcast "https://updater.smoothscroll.net/mac/updater.xml"
  name "SmoothScroll"
  homepage "https://www.smoothscroll.net/"

  depends_on macos: ">= :sierra"

  app "SmoothScroll.app"
end
