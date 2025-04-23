cask "buckets@beta" do
  arch arm: "arm64", intel: "amd64"

  version "0.80.0"
  sha256 arm:   "6447866160e3118d29c4092bdcc3a2940093d91c7a8cb56635005d9fc574a9d7",
         intel: "177e6a2f7ff96d64ca2a0d70cd1f5e84a17d000e4cf4c178618686ff8417bb8a"

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
