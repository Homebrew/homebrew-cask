cask "ray" do
  arch arm: "arm64", intel: "x64"

  version "3.3.0"
  sha256 arm:   "2713727a0ca61a306251e0cb660478928978897e721702b57e16d3e55f09bbfd",
         intel: "2d012da32df84b254a160c8245ddbc10d1fa2387075b99580c8ab81671cd3e8d"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/be.spatie.ray.sfl*",
    "~/Library/Application Support/Ray",
    "~/Library/Caches/be.spatie.ray",
    "~/Library/Caches/be.spatie.ray.ShipIt",
    "~/Library/Logs/Ray",
    "~/Library/Preferences/be.spatie.ray.plist",
    "~/Library/Saved Application State/be.spatie.ray.savedState",
  ]
end
