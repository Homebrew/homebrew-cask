cask "krita" do
  version "4.4.1"
  sha256 "922f228fa35119cca3aa6c2dbf5f76a3307f83bed6d7cee2fe3de5b6b92a1abd"

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
