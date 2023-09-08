cask "ray" do
  arch arm: "-arm64"
  folder = on_arch_conditional arm: "arm64/"

  version "2.6.9"
  sha256 arm:   "3011dfb4c4641784de63b70f829ae554bd4b8051d96d9abe9b7136d5d3196917",
         intel: "06765ce9041293e74d8ce1debc9fbc2eb0be4fc64662896ada1e47bf5b24ee3e"

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
