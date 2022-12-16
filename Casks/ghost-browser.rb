cask "ghost-browser" do
  arch arm: "_arm64"

  version "2.1.4.4"
  sha256 arm:   "fbc727ec4ea20128993645bce3ca93d58c322fc8f12bb45ee435435a42129df0",
         intel: "a0b30ab8366f44bb8938fb8a954f978b68dbc170abef78bfb96ecd9992393232"

  url "https://downloads.ghostbrowser.com/GhostBrowser-#{version}#{arch}.dmg"
  name "Ghost Browser"
  desc "Web browser"
  homepage "https://ghostbrowser.com/download/"

  livecheck do
    url "https://ghostbrowser.s3.amazonaws.com/updates/changelog.html"
    regex(/>\s*Version\s*(\d+(?:\.\d+)+)/i)
  end

  app "Ghost Browser.app"
end
