cask "ghost-browser" do
  version "2.1.3.3"
  sha256 "966367c1f4a8504e28c30d4f6d742c8c4c2e029bebad2303eec668434bb5b991"

  url "https://ghostbrowser.s3.amazonaws.com/downloads/GhostBrowser-#{version}.dmg",
      verified: "ghostbrowser.s3.amazonaws.com/"
  name "Ghost Browser"
  desc "Web browser"
  homepage "https://ghostbrowser.com/download/"

  livecheck do
    url "https://ghostbrowser.s3.amazonaws.com/updates/changelog.html"
    regex(/>\s*Version\s*(\d+(?:\.\d+)+)/i)
  end

  app "Ghost Browser.app"
end
