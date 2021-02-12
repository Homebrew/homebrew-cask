cask "krita" do
  version "4.4.2"
  sha256 "c9f703be76bdd96d6d86b62850d8323b76743736a2d64af8d1506b4f9d1856c4"

  url "https://cdn.download.kde.org/stable/krita/#{version.major_minor_patch}/krita-#{version}.dmg",
      verified: "cdn.download.kde.org/stable/krita/"
  appcast "https://download.kde.org/stable/krita/",
          must_contain: version.major_minor_patch
  name "Krita"
  desc "Free and open-source painting and sketching program"
  homepage "https://krita.org/"

  depends_on macos: ">= :sierra"

  app "krita.app"

  zap trash: [
    "~/Library/Application Support/krita",
    "~/Library/Preferences/kritadisplayrc",
    "~/Library/Preferences/kritarc",
    "~/Library/Saved Application State/org.krita.savedState",
  ]
end
