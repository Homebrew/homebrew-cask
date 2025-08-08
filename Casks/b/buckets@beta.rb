cask "buckets@beta" do
  arch arm: "arm64", intel: "amd64"

  version "0.81.0"
  sha256 arm:   "1a2cf01973219c36b4874876290ef8b7a92b78ae1c0ae46a63efd80258b9f486",
         intel: "c01ab811f6fd5218f74dd723796d49a3d7cf28f616d586b0e927c0a076e085e6"

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
