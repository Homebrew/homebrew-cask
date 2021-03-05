cask "keycue" do
  version "9.9"
  sha256 "86c2d48a659046d1c5934b386d0f5c7e75b68d0a2a65e73a3a4705543be261ad"

  url "https://www.ergonis.com/downloads/products/keycue/KeyCue#{version.no_dots}-Install.dmg",
      user_agent: :fake
  name "KeyCue"
  desc "Finds, learns and remembers keyboard shortcuts"
  homepage "https://www.ergonis.com/products/keycue/"

  livecheck do
    url "https://www.ergonis.com/products/keycue/history.html"
    regex(/<h\d>\s*?KeyCue\s+?v?(\d+(?:\.\d+)+)/i)
  end

  app "KeyCue.app"

  zap trash: [
    "~/Library/Application Support/KeyCue",
    "~/Library/Preferences/com.macility.keycue.plist",
  ]
end
