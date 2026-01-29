cask "elgato-studio" do
  version "1.0.4.946"
  sha256 "7a2a34b8dc2e18053cf1d16b59a4118930ca35441ffd9da5f5d7be37e2813bfa"

  url "https://edge.elgato.com/egc/macos/estm/release/ElgatoStudio-#{version}.dmg"
  name "Elgato Studio"
  desc "Capture and manage Elgato devices for content creation"
  homepage "https://www.elgato.com/ww/en/s/downloads"

  livecheck do
    url "https://gc-updates.elgato.com/mac/estm-update/final/feed-manual.xml"
    regex(/ElgatoStudio[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Elgato Studio.app"

  zap trash: [
    "~/Library/Application Support/com.elgato.studio",
    "~/Library/Caches/com.elgato.studio",
    "~/Library/Preferences/com.elgato.studio.plist",
    "~/Library/Saved Application State/com.elgato.studio.savedState",
  ]
end
