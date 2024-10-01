cask "krita" do
  version "5.2.6"
  sha256 "0d58024d8b9c720124fb56f477b739995ff785aab3095cfb2017586d841f3bf6"

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
