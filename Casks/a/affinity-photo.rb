cask "affinity-photo" do
  version "2.5.7,2948"
  sha256 "cca3daf571168426602aabc7268700088e84d694e05aaa396c515162818a4b62"

  url "https://affinity-update.s3.amazonaws.com/mac2/retail/Affinity%20Photo%20#{version.csv.first.major}%20Affinity%20Store%20#{version.csv.second}.zip",
      verified: "affinity-update.s3.amazonaws.com/"
  name "Affinity Photo #{version.csv.first.major}"
  desc "Professional image editing software"
  homepage "https://affinity.serif.com/en-us/photo/"

  livecheck do
    url "https://go.seriflabs.com/affinity-update-mac-retail-photo#{version.csv.first.major}"
    strategy :sparkle
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
