cask "krita" do
  version "5.3.1.1"
  sha256 "3f4061a776151454a967fcb38b29b9549277cbe2c4c1d05b2ffc55e94aad7cd6"

  url "https://download.kde.org/stable/krita/#{version.major_minor_patch}/krita-#{version}-signed.dmg",
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
