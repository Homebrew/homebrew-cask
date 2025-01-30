cask "krita" do
  version "5.2.9"
  sha256 "fff90ce72124029fc57e0f2225980ec6a6c5146b0c41b36eeb501d4a43965a6a"

  url "https://download.kde.org/stable/krita/#{version}/krita-#{version}-release.dmg",
      verified: "download.kde.org/stable/krita/"
  name "Krita"
  desc "Free and open-source painting and sketching program"
  homepage "https://krita.org/"

  livecheck do
    url "https://krita.org/en/download/"
    regex(/href=.*?krita[._-]v?(\d+(?:\.\d+)+)(?:-signed|-release)?\.dmg/i)
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
