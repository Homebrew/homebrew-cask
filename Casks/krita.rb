cask "krita" do
  version "5.1.2"
  sha256 "52ba7a89bedbdfc18b7e95e80296663b8bef61018de22e3dd5c6b7fd8f3ca8be"

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
