cask "ghost-browser" do
  version "2.1.1.17"
  sha256 "0b729e4890e109e5900410bddc0f5e9116f2fb8e7f88d9d426de01fc5807a271"

  # ghostbrowser.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://ghostbrowser.s3.amazonaws.com/downloads/GhostBrowser-#{version}.dmg"
  appcast "https://ghostbrowser.s3.amazonaws.com/updates/changelog.html"
  name "Ghost Browser"
  homepage "https://ghostbrowser.com/download/"

  app "Ghost Browser.app"
end
