cask "affinity-photo" do
  version "2.5.6,2887"
  sha256 "277269548e43ed21ef3dd3fddb7405e3b56f1a2212dffb49c5d4b9fea6d8ff67"

  url "https://affinity-update.s3.amazonaws.com/mac2/retail/Affinity%20Photo%20#{version.csv.first.major}%20Affinity%20Store%20#{version.csv.second}.zip",
      verified: "affinity-update.s3.amazonaws.com/"
  name "Affinity Photo #{version.csv.first.major}"
  desc "Professional image editing software"
  homepage "https://affinity.serif.com/en-us/photo/"

  livecheck do
    url "https://go.seriflabs.com/affinity-update-mac-retail-photo#{version.csv.first.major}"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}"
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Affinity Photo #{version.csv.first.major}.app"

  zap trash: [
    "~/Library/Application Support/Affinity Photo #{version.csv.first.major}",
    "~/Library/Caches/com.seriflabs.affinityphoto#{version.csv.first.major}",
    "~/Library/HTTPStorages/com.seriflabs.affinityphoto#{version.csv.first.major}",
    "~/Library/Preferences/com.seriflabs.affinityphoto#{version.csv.first.major}.plist",
    "~/Library/Saved Application State/com.seriflabs.affinityphoto#{version.csv.first.major}.savedState",
    "~/Library/WebKit/com.seriflabs.affinityphoto#{version.csv.first.major}",
  ]
end
