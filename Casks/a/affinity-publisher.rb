cask "affinity-publisher" do
  version "2.5.3,2516"
  sha256 "2a4fef28b2706dc3072044628cb810d91facabb360661fd87f449eac4fed4194"

  url "https://affinity-update.s3.amazonaws.com/mac2/retail/Affinity%20Publisher%20#{version.csv.first.major}%20Affinity%20Store%20#{version.csv.second}.zip",
      verified: "affinity-update.s3.amazonaws.com/"
  name "Affinity Publisher #{version.csv.first.major}"
  desc "Professional desktop publishing software"
  homepage "https://affinity.serif.com/en-us/publisher/"

  livecheck do
    url "https://go.seriflabs.com/affinity-update-mac-retail-publisher#{version.csv.first.major}"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}"
    end
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
