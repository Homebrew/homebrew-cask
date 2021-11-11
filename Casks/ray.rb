cask "ray" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"
  folder = Hardware::CPU.intel? ? "" : "arm64/"

  version "1.18.3"

  if Hardware::CPU.intel?
    sha256 "b2ba99ed35304def9a545641c51e2452404a589e22ed1747a82157972555094d"
  else
    sha256 "28b636dc58347935275926cdf022c27c7a060e7d2fb3c0733734c431a7754acd"
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
