cask "buckets@beta" do
  arch arm: "arm64", intel: "amd64"

  version "0.74.0"
  sha256 arm:   "a2625d31d94c70702971d97a1146c7f7dc17474a676083150ba5fb234fa42633",
         intel: "f294868843305ca93eeef8faa8e59c22b755cd0d7de42aab7b9a9898eb894e24"

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
