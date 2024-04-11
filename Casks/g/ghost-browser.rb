cask "ghost-browser" do
  arch arm: "_arm64"

  version "2.3.0.2"
  sha256 arm:   "92bb732d5a43caa1c72510c19388187d1c5a73a643638ea447a8a8e306258b6d",
         intel: "b47e31f5dd4498cb74e45948c7ba507a5bbe151d6aec8767b60333bd773e2ab6"

  url "https://downloads.ghostbrowser.com/GhostBrowser-#{version}#{arch}.dmg"
  name "Ghost Browser"
  desc "Web browser"
  homepage "https://ghostbrowser.com/download/"

  livecheck do
    url "https://ghostbrowser.s3.amazonaws.com/updates/changelog.html"
    regex(/>\s*Version\s*(\d+(?:\.\d+)+)/i)
  end

  app "Ghost Browser.app"

  zap trash: [
    "~/Library/Application Support/GhostBrowser",
    "~/Library/Caches/GhostBrowser",
    "~/Library/Preferences/com.ghostbrowser.gb1.plist",
    "~/Library/Saved Application State/com.ghostbrowser.gb1.savedState",
  ]
end
