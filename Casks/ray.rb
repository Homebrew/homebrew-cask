cask "ray" do
  version "1.18.0"

  if Hardware::CPU.intel?
    sha256 "6d58a918bff69eecfd02cd004e63e376889bf313d4f18f8f68d51740399890a4"
    url "https://ray-app.s3.eu-west-1.amazonaws.com/Ray-#{version}.dmg",
        verified: "ray-app.s3.eu-west-1.amazonaws.com/"
  else
    sha256 "42357940c2fad33958d85cf82c0cbd158065e3532e5ebb58018633ecf3789e5f"
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
