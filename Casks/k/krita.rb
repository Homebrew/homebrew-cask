cask "krita" do
  version "5.3.0"
  sha256 "62cadee8977a1fc434c793f87d5dddc5948ccc6ce2edd9c8d9865188f375cd59"

  url "https://download.kde.org/stable/krita/#{version}/krita-#{version}-signed.dmg",
      verified: "download.kde.org/stable/krita/"
  name "Krita"
  desc "Free and open-source painting and sketching program"
  homepage "https://krita.org/"

  livecheck do
    url "https://krita.org/en/download/"
    regex(/href=.*?krita[._-]v?(\d+(?:\.\d+)+)(?:[._-]signed|[._-]release)?\.dmg/i)
  end

  app "krita.app"

  zap trash: [
    "~/Library/Application Support/krita",
    "~/Library/Preferences/kritadisplayrc",
    "~/Library/Preferences/kritarc",
    "~/Library/Saved Application State/org.krita.savedState",
  ]
end
