cask "elgato-studio" do
  version "1.1.0.1170"
  sha256 "90eb81b1b06b166f69e309e0861f176e99159555aaccd86993f79f1563e54795"

  url "https://edge.elgato.com/egc/macos/estm/release/ElgatoStudio-#{version}.dmg"
  name "Elgato Studio"
  desc "Capture and manage Elgato devices for content creation"
  homepage "https://www.elgato.com/ww/en/s/downloads"

  livecheck do
    url "https://gc-updates.elgato.com/mac/estm-update/final/feed-manual.xml"
    regex(/ElgatoStudio[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Elgato Studio.app"

  zap trash: [
    "~/Library/Application Support/com.elgato.studio",
    "~/Library/Caches/com.elgato.studio",
    "~/Library/Preferences/com.elgato.studio.plist",
    "~/Library/Saved Application State/com.elgato.studio.savedState",
  ]
end
