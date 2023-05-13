cask "ghost-browser" do
  arch arm: "_arm64"

  version "2.1.4.5"
  sha256 arm:   "aac49c17eb278e3cc214da58636bc5b66c62fb5b79de962cf32356fbd7024e9d",
         intel: "e7efc9ddf557b301687bca83d94714dce6b2817a99f07db8d7452e290bb38954"

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
