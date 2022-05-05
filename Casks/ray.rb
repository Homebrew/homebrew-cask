cask "ray" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"
  folder = Hardware::CPU.intel? ? "" : "arm64/"

  version "2.0.1"

  if Hardware::CPU.intel?
    sha256 "d2a2eda635147a34d136312505f77a3e09123289aa0919e2e942935e379bc7a9"
  else
    sha256 "75dd6a77e02f9c6c84b1bb95918f706d97a3a3fc6ae8fa0e74c1c0155ba12e78"
  end

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
