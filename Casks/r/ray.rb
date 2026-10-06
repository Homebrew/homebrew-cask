cask "ray" do
  arch arm: "arm64", intel: "x64"

  version "3.2.14"
  sha256 arm:   "ed64f5b0a78f625f42071835396ee278faaacd1994c1f0fe439a23489603e77f",
         intel: "b9c27727bd1ec86a11848d178346a952f81ea83d995be7581da46ac0cddefa76"

  url "https://ray-app.s3.eu-west-1.amazonaws.com/ray-app-updates-v#{version.major}/stable/ray-#{version}-latest-darwin-#{arch}.dmg"
  name "Ray"
  desc "Debug with Ray to fix problems faster"
  homepage "https://myray.app/"

  livecheck do
    url "https://spatie.be/products/ray/v#{version.major}/download/macos-#{arch}/latest"
    regex(/ray[._-]v?(\d+(?:\.\d+)+).+#{arch}\.dmg/i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :monterey

  app "Ray.app"

  uninstall quit: "be.spatie.ray"

  zap trash: [
    "~/Library/Application Support/Ray",
    "~/Library/Caches/be.spatie.ray",
    "~/Library/Caches/be.spatie.ray.ShipIt",
    "~/Library/Logs/Ray",
    "~/Library/Preferences/be.spatie.ray.plist",
    "~/Library/Saved Application State/be.spatie.ray.savedState",
  ]
end
