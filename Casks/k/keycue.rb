cask "keycue" do
  version "11.1.1"
  sha256 "cd5da2bada2130ee09a2b36b20bc52e3c49ebb90122b38aedb2f36087bd0908f"

  url "https://www.ergonis.com/downloads/products/keycue/KeyCue#{version.no_dots}-Install.dmg",
      user_agent: :fake
  name "KeyCue"
  desc "Finds, learns and remembers keyboard shortcuts"
  homepage "https://ergonis.com/keycue"

  livecheck do
    url "https://ergonis.com/keycue/download"
    regex(/<h\d.*?KeyCue\sv?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :monterey"

  app "KeyCue.app"

  zap trash: [
    "~/Library/Application Support/KeyCue",
    "~/Library/Preferences/com.macility.keycue.plist",
  ]
end
