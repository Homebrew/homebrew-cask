cask "keycue" do
  version "11.0"
  sha256 "257cf237dde43259e9280396f89c1254efe4b590caa66515ea5217abdd98091d"

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
