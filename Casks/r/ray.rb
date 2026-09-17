cask "ray" do
  arch arm: "arm64", intel: "x64"

  version "3.2.12"
  sha256 arm:   "f265d2f6b27e21a75e15f7d95083dc1a702d666d8dcda480b965ca266f07b4da",
         intel: "cbf3c3db464c5c4043542d86c9f2a590441dcc2e06b5fa0b5d920240255c6a29"

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
