cask "ray" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"
  folder = Hardware::CPU.intel? ? "" : "arm64/"

  version "1.18.1"

  if Hardware::CPU.intel?
    sha256 "66809f2935f21dd1890a7c04e59371f95d96efc22ac1d16ab216f86761f29444"
  else
    sha256 "6dff7448441e54d6c73a20943cec1d76609e1b706a96cc8da9c71c5e0c8f98de"
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
