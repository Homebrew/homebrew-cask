cask "gifox" do
  version "2.9.0+1,020900.01"
  sha256 "6e4076c37aeb136a5f12bcdadaa3693624de6de585f3e181c5017cf4b57088b6"

  url "https://d1fqctmfkpkkcg.cloudfront.net/gifox/#{version.csv.second}.dmg",
      verified: "d1fqctmfkpkkcg.cloudfront.net/gifox/"
  name "gifox"
  desc "GIF recording and sharing"
  homepage "https://gifox.io/"

  # The Sparkle feed contains unstable versions that contain `beta` in the
  # title and `shortVersionString`, so we only match stable versions.
  livecheck do
    url "https://d1fqctmfkpkkcg.cloudfront.net/gifox/appcast.xml"
    regex(/^v?(\d+(?:[.+]\d+)+)$/i)
    strategy :sparkle do |items, regex|
      items.filter_map do |item|
        next unless item.short_version&.match?(regex)

        item.nice_version
      end
    end
  end

  auto_updates true

  app "Gifox.app"

  uninstall launchctl: "com.gifox.gifox#{version.major}.agent",
            quit:      "com.gifox.gifox#{version.major}"

  zap trash: [
    "~/Library/Application Support/Gifox #{version.major}",
    "~/Library/Caches/com.gifox.gifox#{version.major}",
    "~/Library/Cookies/com.gifox.gifox#{version.major}.binarycookies",
    "~/Library/Preferences/com.gifox.gifox#{version.major}.plist",
  ]
end
