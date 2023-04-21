cask "ocenaudio" do
  version "3.11.24"
  sha256 :no_check

  on_arm do
    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_bigsur_arm64.dmg"
  end
  on_intel do
    on_high_sierra :or_older do
      url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg"
    end
    on_mojave do
      url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg"
    end
    on_catalina do
      url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg"
    end
    on_big_sur :or_newer do
      url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_bigsur.dmg"
    end
  end

  name "ocenaudio"
  desc "Audio editor"
  homepage "https://www.ocenaudio.com/en"

  livecheck do
    url "https://www.ocenaudio.com/changelog"
    regex(/download\?version=v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  app "ocenaudio.app"

  zap trash: "~/Library/Application Support/ocenaudio"
end
