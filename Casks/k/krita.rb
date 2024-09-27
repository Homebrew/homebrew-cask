cask "krita" do
  version "5.2.5"
  sha256 "b1a84c3b0a83ef00b7099401976e12f86656dac2ae6f368c353a125c77093a56"

  url "https://download.kde.org/stable/krita/#{version}/krita-#{version}-signed.dmg",
      verified: "download.kde.org/stable/krita/"
  name "Krita"
  desc "Free and open-source painting and sketching program"
  homepage "https://krita.org/"

  livecheck do
    url "https://krita.org/en/download/"
    regex(/href=.*?krita[._-]v?(\d+(?:\.\d+)+)(?:-signed)?\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "krita.app"

  zap trash: [
    "~/Library/Application Support/krita",
    "~/Library/Preferences/kritadisplayrc",
    "~/Library/Preferences/kritarc",
    "~/Library/Saved Application State/org.krita.savedState",
  ]
end
