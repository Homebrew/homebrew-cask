cask "krita" do
  version "4.4.5"
  sha256 "1b0e6ecb539043f6522da6f5192c7fcdaae3641fbe5d4a766e4c7834288efc71"

  url "https://cdn.download.kde.org/stable/krita/#{version.major_minor_patch}/krita-#{version}.dmg",
      verified: "cdn.download.kde.org/stable/krita/"
  name "Krita"
  desc "Free and open-source painting and sketching program"
  homepage "https://krita.org/"

  livecheck do
    url "https://download.kde.org/stable/krita/"
    regex(%r{href=['"]?(\d+(?:\.\d+)*)/['"]?}i)
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
