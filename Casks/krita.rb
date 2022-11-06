cask "krita" do
  version "5.1.3"
  sha256 "772b615e831d45cceccdd201897c533a5817aa75c3fbf3f7c8202efa09e74a13"

  url "https://download.kde.org/stable/krita/#{version}/krita-#{version}.dmg",
      verified: "download.kde.org/stable/krita/"
  name "Krita"
  desc "Free and open-source painting and sketching program"
  homepage "https://krita.org/"

  livecheck do
    url "https://download.kde.org/stable/krita/"
    regex(%r{href="(\d+(?:\.\d+)+)/"}i)
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
