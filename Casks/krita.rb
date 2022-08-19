cask "krita" do
  version "5.1.0"
  sha256 "5e6545f36d07d70c03f78d89c6f377e5f398aee89f9086c20f445b25dc49ad19"

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
