cask "ghost-browser" do
  arch = Hardware::CPU.intel? ? "" : "_arm64"

  version "2.1.4.2"

  if Hardware::CPU.intel?
    sha256 "bee4370106ddf93e3408835b4d2a1ac956d00776388a36ddcb13ef9642d5dbe0"
  else
    sha256 "c8cf9bf5c878c7de6210cb3703fcf4035753b2d99d0f42c2b9d335ac9e5e62e3"
  end

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
