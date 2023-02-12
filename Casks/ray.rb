cask "ray" do
  arch arm: "-arm64"
  folder = on_arch_conditional arm: "arm64/"

  version "2.3.0"
  sha256 arm:   "eb9648cc2b36b5829d408c947485d15e70396666ef95c812ba9c4fb754ba60c5",
         intel: "4fac3d4425e8f3e656267ebe41a265353ec1bf3d6c15467b7f1a70e72d919955"

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
