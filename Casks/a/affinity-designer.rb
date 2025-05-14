cask "affinity-designer" do
  version "2.6.3,3322"
  sha256 "872b8d6cd2e475a11b5fade0c8f4a50982594be6c169a618d15ff1cdeef1e75d"

  url "https://affinity-update.s3.amazonaws.com/mac2/retail/Affinity%20Designer%20#{version.csv.first.major}%20Affinity%20Store%20#{version.csv.second}.zip",
      verified: "affinity-update.s3.amazonaws.com/"
  name "Affinity Designer #{version.csv.first.major}"
  desc "Professional graphic design software"
  homepage "https://affinity.serif.com/en-us/designer/"

  livecheck do
    url "https://go.seriflabs.com/affinity-update-mac-retail-designer#{version.csv.first.major}"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Affinity Designer #{version.csv.first.major}.app"

  zap trash: [
    "~/Library/Application Support/Affinity Designer #{version.csv.first.major}",
    "~/Library/Caches/com.seriflabs.affinitydesigner#{version.csv.first.major}",
    "~/Library/HTTPStorages/com.seriflabs.affinitydesigner#{version.csv.first.major}",
    "~/Library/Preferences/com.seriflabs.affinitydesigner#{version.csv.first.major}.plist",
    "~/Library/Saved Application State/com.seriflabs.affinitydesigner#{version.csv.first.major}.savedState",
    "~/Library/WebKit/com.seriflabs.affinitydesigner#{version.csv.first.major}",
  ]
end
