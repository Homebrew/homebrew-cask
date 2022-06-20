cask "krita" do
  version "5.0.6"
  sha256 "53edf2519aaad0f2d3e3b858d7bd8dc2e8215ed9b3bfea8de0516527c54aadba"

  url "https://download.kde.org/stable/krita/#{version.major_minor_patch}/krita-#{version}.dmg",
      verified: "download.kde.org/stable/krita/"
  name "Krita"
  desc "Free and open-source painting and sketching program"
  homepage "https://krita.org/"

  livecheck do
    url "https://krita.org/en/download/krita-desktop/"
    regex(/href=.*?krita[._-](\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "krita.app"

  zap trash: [
    "~/Library/Application Support/krita",
    "~/Library/Preferences/kritadisplayrc",
    "~/Library/Preferences/kritarc",
    "~/Library/Saved Application State/org.krita.savedState",
  ]
end
