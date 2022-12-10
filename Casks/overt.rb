cask "overt" do
  arch arm: "arm64", intel: "x64"

  version "0.5.2"
  sha256 arm:   "cca47bb52ef0be02c4840201636a854c21323b29aff729957ad281a1a60d224a",
         intel: "2218c3e3ba4d322d48fa773bb9c1e83d280ced147fc9bd3aadc5c5bd2c7dd308"

  url "https://github.com/GetOvert/Overt/releases/download/v#{version}/Overt-darwin-#{arch}-#{version}.zip",
      verified: "github.com/GetOvert/Overt/"
  name "Overt"
  desc "Open app store"
  homepage "https://getovert.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Overt.app"

  zap trash: [
    "~/Library/Application Support/OpenStore",
    "~/Library/Application Support/Overt",
    "~/Library/Caches/OpenStore_v1",
    "~/Library/Caches/OpenStore_v2",
    "~/Library/Caches/OpenStore_v3",
    "~/Library/Caches/Overt_v4",
    "~/Library/Caches/Overt_v5",
    "~/Library/Preferences/app.getopenstore.OpenStore.plist",
    "~/Library/Preferences/app.getovert.Overt.plist",
  ]
end
