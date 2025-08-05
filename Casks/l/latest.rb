cask "latest" do
  on_mojave :or_older do
    version "0.10.3"
    sha256 "26e72a8a1555f1f352f4c09189d2feb7c8073f1a4a798fe4beb0e8fa86a7c649"
  end
  on_catalina :or_newer do
    version "0.11"
    sha256 "b372cde029f1f81c6465b1920a7c5a392a7791243cd30ebf39dab172ec82cbf5"
  end

  url "https://max.codes/latest/#{version}.zip"
  name "Latest"
  desc "Utility that shows the latest app updates"
  homepage "https://max.codes/latest"

  # Older versions may have a more recent `pubDate` than newer versions, so we
  # have to check all the items in the appcast.
  livecheck do
    url "https://max.codes/latest/update.xml"
    strategy :sparkle do |items|
      items.map(&:short_version)
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Latest.app"

  zap trash: [
    "~/Library/Caches/com.max-langer.Latest",
    "~/Library/Cookies/com.max-langer.Latest.binarycookies",
    "~/Library/Preferences/com.max-langer.Latest.plist",
    "~/Library/Saved Application State/com.max-langer.Latest.savedState",
  ]
end
