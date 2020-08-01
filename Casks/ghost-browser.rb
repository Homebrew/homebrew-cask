cask "ghost-browser" do
  version "2.1.1.15"
  sha256 "d89a92653c7d7454f12fea0361e97d83c4503c6711888210c00dd5d367741d82"

  # ghostbrowser.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://ghostbrowser.s3.amazonaws.com/downloads/GhostBrowser-#{version}.dmg"
  appcast "https://ghostbrowser.s3.amazonaws.com/updates/changelog.html"
  name "Ghost Browser"
  homepage "https://ghostbrowser.com/download/"

  app "Ghost Browser.app"
end
