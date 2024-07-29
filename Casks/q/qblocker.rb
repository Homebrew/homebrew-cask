cask "qblocker" do
  version "1.2,20,1464612307"
  sha256 "fb0202894271c3b63a6cffb6fa72d5d27065a0698a3b8a8038e18b7c43872385"

  url "https://dl.devmate.com/uk.co.wearecocoon.QBlocker/#{version.csv.second}/#{version.csv.third}/QBlocker-#{version.csv.second}.zip",
      verified: "devmate.com/uk.co.wearecocoon.QBlocker/"
  name "QBlocker"
  desc "Stops you from accidentally quitting an app"
  homepage "https://qblocker.com/"

  livecheck do
    url "https://updates.devmate.com/uk.co.wearecocoon.QBlocker.xml"
    regex(%r{/(\d+)/Qblocker\d*?[_-]v?(\d+(?:\.\d+)*)\.(?:dmg|zip)}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[2]},#{match[1]}"
    end
  end

  app "QBlocker.app"

  zap trash: [
    "~/Library/Application Support/uk.co.wearecocoon.QBlocker",
    "~/Library/Caches/uk.co.wearecocoon.QBlocker",
    "~/Library/Logs/uk.co.wearecocoon.QBlocker",
    "~/Library/Preferences/uk.co.wearecocoon.QBlocker.plist",
  ]

  caveats do
    requires_rosetta
  end
end
