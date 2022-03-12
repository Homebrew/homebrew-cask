cask "eliot" do
  version "2.1"
  sha256 "c7e79f6e58a57dacfdbfdd4c0f15a632163c7c50d3bf0ae1adc3376bece128d7"

  url "https://dl.sv.nongnu.org/releases/eliot/releases/#{version}/eliot-#{version}.dmg"
  name "Eliot"
  desc "Open source Scrabble game"
  homepage "https://www.nongnu.org/eliot/fr/index.html"

  livecheck do
    url "https://www.nongnu.org/eliot/en/dl-macosx.html"
    regex(/href=.*?eliot[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Eliot.app"

  zap trash: [
    "~/Library/Preferences/com.eliot.eliot.plist",
    "~/Library/Preferences/org.nongnu.savannah.eliot.plist",
    "~/Library/Saved Application State/org.nongnu.savannah.eliot.savedState",
  ]
end
