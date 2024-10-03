cask "buckets@beta" do
  arch arm: "arm64", intel: "amd64"

  version "0.77.0"
  sha256 arm:   "c076731a96a4adf0f9af9394e6b5b508a643782d6db382b3d25ee3787ee601a7",
         intel: "799069c43fb4c1821d9195165db381d955e396ab2d3a2d29b72f8116cf2b30a0"

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
