cask "buckets@beta" do
  arch arm: "arm64", intel: "amd64"

  version "0.75.0"
  sha256 arm:   "90b14145220c12c26f9590319365f6e0ca83c008712967afe12dedf7a4ba43cb",
         intel: "55300ce9121527de68ca90933f6e91f129c5a689de70bb464c973801b0e58fda"

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
