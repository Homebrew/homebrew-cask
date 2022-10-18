cask "ghost-browser" do
  arch arm: "_arm64"

  version "2.1.4.3"
  sha256 arm:   "5df32b98b1bcf75aa95647a83d98bf775a9dea53655e89a4ab82cb48716314f8",
         intel: "670b47313871ab6870a86cec8853b4ece33f6b11b6baf42b250e414141e3fccd"

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
