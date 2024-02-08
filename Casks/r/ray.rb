cask "ray" do
  arch arm: "-arm64"
  folder = on_arch_conditional arm: "arm64/"

  version "2.7.5"
  sha256 arm:   "32a6995802810138b0f82b4da58e788eb70c1cd23e2c3f041c00fb7dac17324d",
         intel: "ccd7a6ad3664401acb95ae7491841ec02f9e9d44da7a6c4563be70fa91aeff8c"

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
