cask "ray" do
  arch arm: "-arm64"
  folder = on_arch_conditional arm: "arm64/"

  version "2.6.7"
  sha256 arm:   "468bb3a7bcc7d82f465f3fe7a0cc3dae5c43b4b804ce5fa05c99279a5c9b95d5",
         intel: "d531715d78af67d488bae76caa9c7c00f93f022bf334b9c16f37187f06fd4cf8"

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
