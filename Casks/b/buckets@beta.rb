cask "buckets@beta" do
  arch arm: "arm64", intel: "amd64"

  version "0.76.0"
  sha256 arm:   "e86da65f59b8c1d167723b44e3b90a0e650f388c8dbc28c1812ff57e6526f692",
         intel: "49ec517f2b3353a97cd4d71d80692d2c7282d40778de9cb466998f116379b28f"

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
