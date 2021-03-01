cask "ray" do
  version "1.12.0"
  sha256 "6f7c43c34ca9d0a20796f80c7930042900b44ae1d29bfc65585896bd7f37dc5d"

  url "https://ray-app.s3.eu-west-1.amazonaws.com/Ray-#{version}.dmg",
      verified: "ray-app.s3.eu-west-1.amazonaws.com/"
  name "Ray"
  desc "Debug with Ray to fix problems faster"
  homepage "https://myray.app/"

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
