cask "qblocker" do
  version "1.2,20:1464612307"
  sha256 "fb0202894271c3b63a6cffb6fa72d5d27065a0698a3b8a8038e18b7c43872385"

  url "https://dl.devmate.com/uk.co.wearecocoon.QBlocker/#{version.after_comma.before_colon}/#{version.after_colon}/QBlocker-#{version.after_comma.before_colon}.zip",
      verified: "devmate.com/uk.co.wearecocoon.QBlocker/"
  name "QBlocker"
  homepage "https://qblocker.com/"

  livecheck do
    url "https://updates.devmate.com/uk.co.wearecocoon.QBlocker.xml"
    strategy :sparkle do |item|
      id = item.url[%r{/(\d+)/QBlocker-\d+\.zip}i, 1]
      "#{item.short_version},#{item.version}:#{id}"
    end
  end

  app "QBlocker.app"

  zap trash: [
    "~/Library/Application Support/uk.co.wearecocoon.QBlocker",
    "~/Library/Caches/uk.co.wearecocoon.QBlocker",
    "~/Library/Logs/uk.co.wearecocoon.QBlocker",
    "~/Library/Preferences/uk.co.wearecocoon.QBlocker.plist",
  ]
end
