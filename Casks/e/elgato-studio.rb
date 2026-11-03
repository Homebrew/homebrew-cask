cask "elgato-studio" do
  version "2.0.0.2230"
  sha256 "7a9735e3a48ec181c704c5e8a1b163272dfd284b6e2c2ca5cbf5739874fb0095"

  url "https://edge.elgato.com/egc/macos/estm/release/ElgatoStudio-#{version}.dmg"
  name "Elgato Studio"
  desc "Capture and manage Elgato devices for content creation"
  homepage "https://www.elgato.com/ww/en/s/downloads"

  livecheck do
    url "https://gc-updates.elgato.com/mac/estm-update/final/feed-manual.xml"
    regex(/ElgatoStudio[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Elgato Studio.app"

  zap trash: [
    "~/Library/Application Scripts/com.elgato.studio",
    "~/Library/Application Support/com.elgato.studio",
    "~/Library/Caches/com.elgato.studio",
    "~/Library/Containers/com.elgato.studio",
    "~/Library/Preferences/com.elgato.studio.plist",
    "~/Library/Saved Application State/com.elgato.studio.savedState",
  ]
end
