cask "overt" do
  arch arm: "arm64", intel: "x64"

  version "0.5.7"
  sha256 arm:   "b6cb163d0eaef9b91a721aff258752d6cc7e8e8ac2753e825febe6e0d7aa90aa",
         intel: "eca463377bb48c5111b2d1364c98572aa49003061995649e95b082a9b7e65b49"

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
