cask "ocenaudio" do
  version "3.15.3"
  sha256 :no_check

  on_big_sur :or_older do
    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_universal_legacy.dmg"
  end
  on_monterey :or_newer do
    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_universal.dmg"
  end

  name "ocenaudio"
  desc "Audio editor"
  homepage "https://www.ocenaudio.com/en"

  livecheck do
    url :url
    strategy :header_match
  end

  app "ocenaudio.app"

  zap trash: [
    "~/Library/Application Support/ocenaudio",
    "~/Library/Caches/ocenaudio",
    "~/Library/Preferences/com.ocenaudio.plist",
    "~/Library/Saved Application State/com.ocenaudio.savedState",
  ]
end
