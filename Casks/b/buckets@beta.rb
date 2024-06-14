cask "buckets@beta" do
  arch arm: "arm64", intel: "amd64"

  version "0.74.1"
  sha256 arm:   "f1b5a6810a58f054f273202e3ce4264e84a28afdedbd6f50b23759568b60667e",
         intel: "d828f1deade03247574894146c9f426a987ca6ea628f76494567b68045f6e70c"

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
