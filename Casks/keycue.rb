cask "keycue" do
  version "9.10"
  sha256 "a2cc031e25be2caa04680588f4164864a3d806b23c92b83d4c9a2291d02c1ab9"

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
