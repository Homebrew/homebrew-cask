cask "publii" do
  version "0.38.0"
  sha256 "ed6135bc5817f659bca3c7697be58376acf2cac67249e78afdd780690ce811c8"

  url "https://cdn.getpublii.com/Publii-#{version}.dmg"
  name "Publii"
  homepage "https://getpublii.com/"

  livecheck do
    url "https://getpublii.com/download/"
    strategy :page_match
    regex(%r{href=.*?/Publii-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Publii.app"

  zap trash: [
    "~/Documents/Publii",
    "~/Library/Application Support/Publii",
    "~/Library/Logs/Publii",
    "~/Library/Preferences/com.tidycustoms.publii.plist",
  ]
end
