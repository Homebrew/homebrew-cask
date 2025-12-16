cask "elgato-studio" do
  version "1.0.3.877"
  sha256 "0e997a4bc5b029b6adfba607264be38f2142d9254e1ae1c68bdd9e71b56bb132"

  url "https://edge.elgato.com/egc/macos/estm/release/ElgatoStudio-#{version}.dmg"
  name "Elgato Studio"
  desc "Capture and manage Elgato devices for content creation"
  homepage "https://www.elgato.com/ww/en/s/downloads"

  livecheck do
    url "https://gc-updates.elgato.com/mac/estm-update/final/feed-manual.xml"
    regex(/ElgatoStudio[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :json do |json|
      articles = json["articles"] || []
      body = articles.first&.dig("body")
      match = body&.match(/ElgatoStudio-(\d+(?:\.\d+)+)\.(\d+)\.dmg/i)
      next unless match

      "#{match[1]}.#{match[2]}"
    end
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
