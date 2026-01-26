cask "krita" do
  version "5.2.14"
  sha256 "bbdd9b7aca29e086562b2e49d5b2ffeed737ae2fa093a6fe1ea84e975f687f71"

  url "https://download.kde.org/stable/krita/#{version}/krita-#{version}_signed.dmg",
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
