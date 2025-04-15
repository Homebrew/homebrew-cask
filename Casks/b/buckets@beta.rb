cask "buckets@beta" do
  arch arm: "arm64", intel: "amd64"

  version "0.79.1"
  sha256 arm:   "dfa829e329f8b21a932fe65e5326dffdf49292e539a606c3571528b0e62c7526",
         intel: "d723ab31646be79cc0780f98f313c1c5ddde2bc50bcd4c14467cb7e042207e4c"

  url "https://github.com/buckets/desktop-beta/releases/download/v#{version}/Buckets-Beta-#{arch}-#{version}.dmg",
      verified: "github.com/buckets/desktop-beta/"
  name "Buckets Beta"
  desc "Budgeting tool"
  homepage "https://www.budgetwithbuckets.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Buckets Beta.app"

  zap trash: [
    "~/Library/Application Support/Buckets Beta",
    "~/Library/Preferences/com.onepartrain.buckets.desktopbeta.plist",
  ]
end
