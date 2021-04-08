cask "ray" do
  version "1.14.7"
  sha256 "e35fe2e4c7c016822427eb407732b3cdd5c8cb81b9591b42dbc5ba316eafc764"

  url "https://ray-app.s3.eu-west-1.amazonaws.com/Ray-#{version}.dmg",
      verified: "ray-app.s3.eu-west-1.amazonaws.com/"
  name "Ray"
  desc "Debug with Ray to fix problems faster"
  homepage "https://myray.app/"

  livecheck do
    url "https://ray-app.s3.amazonaws.com/latest-mac.yml"
    strategy :page_match
    regex(/Ray-(\d+(?:\.\d+)*)-mac\.zip/i)
  end

  auto_updates true

  app "Ray.app"

  zap trash: [
    "~/Library/Application Support/Ray",
    "~/Library/Caches/be.spatie.ray",
    "~/Library/Caches/be.spatie.ray.ShipIt",
    "~/Library/Logs/Ray",
    "~/Library/Preferences/be.spatie.ray.plist",
    "~/Library/Saved Application State/be.spatie.ray.savedState",
  ]
end
