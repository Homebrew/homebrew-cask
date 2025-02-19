cask "affinity-publisher" do
  version "2.6.0,3134"
  sha256 "676d4f5577216663f06f8ab83e32e8837fcc42ec6e0c9031e10f6413de5fcd53"

  url "https://affinity-update.s3.amazonaws.com/mac2/retail/Affinity%20Publisher%20#{version.csv.first.major}%20Affinity%20Store%20#{version.csv.second}.zip",
      verified: "affinity-update.s3.amazonaws.com/"
  name "Affinity Publisher #{version.csv.first.major}"
  desc "Professional desktop publishing software"
  homepage "https://affinity.serif.com/en-us/publisher/"

  livecheck do
    url "https://go.seriflabs.com/affinity-update-mac-retail-publisher#{version.csv.first.major}"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Affinity Publisher #{version.csv.first.major}.app"

  zap trash: [
    "~/Library/Application Support/Affinity Publisher #{version.csv.first.major}",
    "~/Library/Caches/com.seriflabs.affinitypublisher#{version.csv.first.major}",
    "~/Library/HTTPStorages/com.seriflabs.affinitypublisher#{version.csv.first.major}",
    "~/Library/Preferences/com.seriflabs.affinitypublisher#{version.csv.first.major}.plist",
    "~/Library/Saved Application State/com.seriflabs.affinitypublisher#{version.csv.first.major}.savedState",
    "~/Library/WebKit/com.seriflabs.affinitypublisher#{version.csv.first.major}",
  ]
end
