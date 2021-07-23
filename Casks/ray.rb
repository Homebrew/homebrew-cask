cask "ray" do
  version "1.16.0"

  if Hardware::CPU.intel?
    sha256 "1cd6a5a6a0535e4e4c0979268c8dd0d2f6c4b2da2b28d49aa7316dc6df6f9cbd"
    url "https://ray-app.s3.eu-west-1.amazonaws.com/Ray-#{version}.dmg",
        verified: "ray-app.s3.eu-west-1.amazonaws.com/"
  else
    sha256 "179f4b482df6a57a4bf832024bd0a6b90d21cd0b86ed0f40418730a604650001"
    url "https://ray-app.s3.eu-west-1.amazonaws.com/arm64/Ray-#{version}-arm64.dmg",
        verified: "ray-app.s3.eu-west-1.amazonaws.com/"
  end

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
