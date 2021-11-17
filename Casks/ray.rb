cask "ray" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"
  folder = Hardware::CPU.intel? ? "" : "arm64/"

  version "1.18.4"

  if Hardware::CPU.intel?
    sha256 "aee70af4ed1f8438cec2d99ec4d8b3b7ffa27786c36340785d42e74c5c68c0cf"
  else
    sha256 "27102fabc50ca8e316c76b63e95a79a95efdf4a51a68b2660025541932c7bebd"
  end

  url "https://ray-app.s3.eu-west-1.amazonaws.com/#{folder}Ray-#{version}#{arch}.dmg",
      verified: "ray-app.s3.eu-west-1.amazonaws.com/"
  name "Ray"
  desc "Debug with Ray to fix problems faster"
  homepage "https://myray.app/"

  livecheck do
    url "https://ray-app.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
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
