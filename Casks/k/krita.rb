cask "krita" do
  version "5.3.3"
  sha256 "625e37c01cfb74094ae58353dd9d343cd389a00c33cb65d6ddf1f2f1e2bc3a19"

  url "https://download.kde.org/stable/krita/#{version}/krita-#{version}-signed.dmg",
      verified: "download.kde.org/stable/krita/"
  name "Krita"
  desc "Free and open-source painting and sketching program"
  homepage "https://krita.org/"

  livecheck do
    url "https://krita.org/en/download/"
    regex(/href=.*?krita[._-]v?(\d+(?:\.\d+)+)(?:[._-]signed|[._-]release)?\.dmg/i)
  end

  depends_on :macos

  app "krita.app"

  zap trash: [
    "~/Library/Application Support/krita",
    "~/Library/Preferences/kritadisplayrc",
    "~/Library/Preferences/kritarc",
    "~/Library/Saved Application State/org.krita.savedState",
  ]
end
