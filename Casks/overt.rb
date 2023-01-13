cask "overt" do
  arch arm: "arm64", intel: "x64"

  version "0.5.5"
  sha256 arm:   "a5716243310ea53d5d906f4e644051850c1b58f15ef2629437d38b5c457b5731",
         intel: "25e6c58f98bb61095090e9cc30037c0824b34261844067d60bf5f8e8bd0aabb8"

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
