cask "krita" do
  version "4.4.0.1"
  sha256 "952e24c4d5d1403561be3e5de71a97848361a16beabb0e24660756e8b94443a4"

  # cdn.download.kde.org/stable/krita/ was verified as official when first introduced to the cask
  url "https://cdn.download.kde.org/stable/krita/#{version.major_minor_patch}/krita-#{version}.dmg"
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
