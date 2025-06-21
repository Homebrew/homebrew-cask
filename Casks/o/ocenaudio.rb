cask "ocenaudio" do
  version "3.15.0"
  sha256 :no_check

  on_big_sur :or_older do
    on_high_sierra :or_older do
      url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg"
    end
    on_mojave :or_newer do
      url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_universal_legacy.dmg"
    end
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

  depends_on macos: ">= :sierra"

  app "ocenaudio.app"

  zap trash: [
    "~/Library/Application Support/ocenaudio",
    "~/Library/Caches/ocenaudio",
    "~/Library/Preferences/com.ocenaudio.plist",
    "~/Library/Saved Application State/com.ocenaudio.savedState",
  ]
end
