cask "overt" do
  arch arm: "arm64", intel: "x64"

  version "0.5.6"
  sha256 arm:   "fcb943cbbaccf5d98a6641322e08f68b37d9dd01247222713a80c536d2660341",
         intel: "f06c24a651d7b8215c2a781688ab4a1b9d9de6008aee5e9c2ba3d08fe8366cd7"

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
    "~/Library/Caches/Overt_v6",
    "~/Library/Preferences/app.getopenstore.OpenStore.plist",
    "~/Library/Preferences/app.getovert.Overt.plist",
  ]
end
