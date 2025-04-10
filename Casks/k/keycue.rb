cask "keycue" do
  version "11.1"
  sha256 "c8d761434d8257bbfcb19ee35904e3fc753bcb61947a7441448d334fbccf53bf"

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
