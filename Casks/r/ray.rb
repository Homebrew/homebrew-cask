cask "ray" do
  arch arm: "-arm64"
  folder = on_arch_conditional arm: "arm64/"

  version "2.8.0"
  sha256 arm:   "d8ddc523ccd4e262009489fda361570614091b1b44ba12cdbab7a1c3424332f3",
         intel: "4a3da1758f7d6560023659fc57acd64cf71eac4b19b537fd27d527d349bb9deb"

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
