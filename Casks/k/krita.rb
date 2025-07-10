cask "krita" do
  version "5.2.10"
  sha256 "fac6ccdea070a35be67e31c0b95b582186a3d4703ba43e9f8e8fff10d7440a5a"

  url "https://download.kde.org/stable/krita/#{version}/krita-#{version}.dmg",
      verified: "download.kde.org/stable/krita/"
  name "Krita"
  desc "Free and open-source painting and sketching program"
  homepage "https://krita.org/"

  livecheck do
    url "https://krita.org/en/download/"
    regex(/href=.*?krita[._-]v?(\d+(?:\.\d+)+)(?:-signed|-release)?\.dmg/i)
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :high_sierra"

  app "krita.app"

  zap trash: [
    "~/Library/Application Support/krita",
    "~/Library/Preferences/kritadisplayrc",
    "~/Library/Preferences/kritarc",
    "~/Library/Saved Application State/org.krita.savedState",
  ]
end
