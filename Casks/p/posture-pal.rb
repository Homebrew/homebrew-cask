cask "posture-pal" do
  version "1.3,19"
  sha256 "420d48a7cbf5a6f2585b3e4192da65d258ad3bf6beaafa4cb607b0ab15519483"

  url "https://macwhisper-site.vercel.app/posturepal/releases/Posture%20Pal-#{version.csv.second}.zip",
      verified: "macwhisper-site.vercel.app/"
  name "Posture Pal"
  desc "Bad posture reminding tool"
  homepage "https://goodsnooze.gumroad.com/l/posturepal"

  # Older items in the Sparkle feed may have a newer pubDate, so it's necessary
  # to work with all of the items in the feed (not just the newest one).
  livecheck do
    url "https://macwhisper-site.vercel.app/posturepal/appcast.xml"
    strategy :sparkle do |items|
      items.map(&:nice_version)
    end
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Posture Pal.app"

  zap trash: [
    "~/Library/HTTPStorages/com.goodsnooze.sebby-gum",
    "~/Library/Preferences/com.goodsnooze.sebby-gum.plist",
    "~/Library/Preferences/group.com.goodsnooze.posturepal.shared.plist",
  ]
end
