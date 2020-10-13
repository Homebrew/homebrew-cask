cask "krita" do
  version "4.4.0"
  sha256 "5134edd093386670c4c91e09a9e94628cd9f2f7e83c99968580c6e76bc4e975b"

  # kde.org/stable/krita/ was verified as official when first introduced to the cask
  url "https://download.kde.org/stable/krita/#{version}/krita-#{version}.dmg"
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
