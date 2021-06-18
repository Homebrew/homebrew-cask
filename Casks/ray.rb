cask "ray" do
  version "1.14.7"

  if Hardware::CPU.intel?
    sha256 "799798cf31ff96924db32b14930fb8ab302e0ee16f084e2d388b378f4b13f708"
    url "https://ray-app.s3.eu-west-1.amazonaws.com/Ray-#{version}.dmg",
        verified: "ray-app.s3.eu-west-1.amazonaws.com/"
  else
    sha256 "f9ee5e0ffaf4ac00bef5d2d9c27b9cdd1210b9bf1d1d1a29419aa885f8c13749"
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
