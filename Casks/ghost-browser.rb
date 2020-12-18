cask "ghost-browser" do
  version "2.1.1.19"
  sha256 "086ed71f1d0315c791651b0f1ea911277b92b3d4237949dee6782a163fbd4562"

  url "https://ghostbrowser.s3.amazonaws.com/downloads/GhostBrowser-#{version}.dmg",
      verified: "ghostbrowser.s3.amazonaws.com/"
  appcast "https://ghostbrowser.s3.amazonaws.com/updates/changelog.html"
  name "Ghost Browser"
  homepage "https://ghostbrowser.com/download/"

  app "Ghost Browser.app"
end
