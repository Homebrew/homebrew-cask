cask "ray" do
  version "1.5.0"
  sha256 "c9c242929d7d88ff0b0f0b809ed772c5c30c3ed991b4aec37b5bcfe8e5ac174f"

  url "https://ray-app.s3.eu-west-1.amazonaws.com/Ray-#{version}.dmg",
      verified: "ray-app.s3.eu-west-1.amazonaws.com/"
  name "Ray"
  desc "Debug with Ray to fix problems faster"
  homepage "https://myray.app/"

  app "Ray.app"

  zap trash: [
    "~/Library/Application Support/Ray",
    "~/Library/Preferences/be.spatie.ray.plist",
    "~/Library/Ray",
  ]
end
