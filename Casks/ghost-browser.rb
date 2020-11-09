cask "ghost-browser" do
  version "2.1.1.18"
  sha256 "939f2d7a50609954e9b1a4858c636885729aa837784f623143e5dddda783b7bf"

  # ghostbrowser.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://ghostbrowser.s3.amazonaws.com/downloads/GhostBrowser-#{version}.dmg"
  appcast "https://ghostbrowser.s3.amazonaws.com/updates/changelog.html"
  name "Ghost Browser"
  homepage "https://ghostbrowser.com/download/"

  app "Ghost Browser.app"
end
