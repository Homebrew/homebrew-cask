cask "buckets@beta" do
  arch arm: "arm64", intel: "amd64"

  version "0.81.1"
  sha256 arm:   "2bd4217dd75b3f813647c9f4a454e52e6e4c2dbb03bc96161f22e393360d86f3",
         intel: "47ea9bf7f6c180a2ebb743ffdc6d235752aae87963fd2ed2983024f2e4cae4c7"

  url "https://github.com/buckets/desktop-beta/releases/download/v#{version}/Buckets-Beta-#{arch}-#{version}.dmg",
      verified: "github.com/buckets/desktop-beta/"
  name "Buckets Beta"
  desc "Budgeting tool"
  homepage "https://www.budgetwithbuckets.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Buckets Beta.app"

  zap trash: [
    "~/Library/Application Support/Buckets Beta",
    "~/Library/Preferences/com.onepartrain.buckets.desktopbeta.plist",
  ]
end
