cask "ray" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"
  folder = Hardware::CPU.intel? ? "" : "arm64/"

  version "1.19.0"

  if Hardware::CPU.intel?
    sha256 "288ae514a68993d163da568f84a32cf4575353b18d3d51297c8d5391e38e53a6"
  else
    sha256 "589cc8496024d3aa8dedae8a7584be07dd286899e9a02d8336df61ad76d197c6"
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
