cask "keycue" do
  version "11.2.1"
  sha256 "22cd3f36c7327b92405569ab9d548e0fbc8d834d7cab99be84ef5176e0b5abff"

  url "https://www.ergonis.com/downloads/products/keycue/KeyCue#{version.no_dots}-Install.dmg",
      user_agent: :fake
  name "KeyCue"
  desc "Finds, learns and remembers keyboard shortcuts"
  homepage "https://ergonis.com/keycue"

  livecheck do
    url "https://ergonis.com/en/keycue/download"
    regex(%r{/keycue/mac/v?(\d+(?:\.\d+)+)/}i)
  end

  depends_on macos: :ventura

  app "KeyCue.app"

  zap trash: [
    "~/Library/Application Support/KeyCue",
    "~/Library/Preferences/com.macility.keycue.plist",
  ]
end
