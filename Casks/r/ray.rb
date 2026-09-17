cask "ray" do
  arch arm: "arm64", intel: "x64"

  version "3.2.11"
  sha256 arm:   "daa267627e7ae1270e1fd156784e853ae6748df7ba0d8fbc13329a360a9f2563",
         intel: "f3780972022ca397cb012f59193592f0a4c7853df4a4c9851d6bf19eac55f39b"

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
