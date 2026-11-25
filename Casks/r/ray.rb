cask "ray" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "77c3b3f2599c9ac98b13cdba67438b56fd61d55b9aff39775da1b219144a09cf",
         intel: "fac4b1cafcd929401f888628b303f79960cbfc2b8f764f1b40ab0eef19fb785b"

  on_arm do
    version "3.2.15"
  end
  on_intel do
    version "3.2.15"
  end

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
