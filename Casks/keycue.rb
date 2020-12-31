cask "keycue" do
  version "9.8"
  sha256 "b430daa5f4922007c233541818fe75a31d0c2cc34a538ded95726f93530a3b85"

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
