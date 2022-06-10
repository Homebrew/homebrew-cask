cask "keycue" do
  version "10.1"
  sha256 "aa66270a8738e4d447e66e386811af6dd9f9a009d37d4d0cd45c12cf2400350c"

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
