cask "ghost-browser" do
  arch = Hardware::CPU.intel? ? "" : "_arm64"

  version "2.1.4.1"

  if Hardware::CPU.intel?
    sha256 "312170ef3d048e46d8f58fedf9ab85bd82372b6319690c8c3afb48af79b63533"
  else
    sha256 "16fbf1770fa65f4df73cc677e46894a5e392478e722a915bc3d7a64b9a1fe820"
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
