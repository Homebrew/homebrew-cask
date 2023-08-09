cask "keycue" do
  version "10.2"
  sha256 "a17a6920f25bf77b5f1e6d83379c845b51ad9a0d0774ef7cf2733e8de4cd667d"

  url "https://www.ergonis.com/downloads/products/keycue/KeyCue#{version.no_dots}-Install.dmg",
      user_agent: :fake
  name "KeyCue"
  desc "Finds, learns and remembers keyboard shortcuts"
  homepage "https://www.ergonis.com/products/keycue/"

  livecheck do
    url "https://www.ergonis.com/products/keycue/history.html"
    regex(/<h\d.*?KeyCue\sv?(\d+(?:\.\d+)+)/i)
  end

  app "KeyCue.app"

  zap trash: [
    "~/Library/Application Support/KeyCue",
    "~/Library/Preferences/com.macility.keycue.plist",
  ]
end
