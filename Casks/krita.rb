cask "krita" do
  version "5.0.0"
  sha256 "667f553484e4f7168f0340b55b380a07d53bf1098d45affd2eeaeab984d169fd"

  url "https://cdn.download.kde.org/stable/krita/#{version.major_minor_patch}/krita-#{version}.dmg",
      verified: "cdn.download.kde.org/stable/krita/"
  name "Krita"
  desc "Free and open-source painting and sketching program"
  homepage "https://krita.org/"

  livecheck do
    url "https://download.kde.org/stable/krita/"
    regex(%r{href=['"]?(\d+(?:\.\d+)+)/['"]?}i)
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
