cask "neat" do
  arch arm: "-arm64"

  version "0.0.58"
  sha256 arm:   "61299c283780ac21ab9ea97fd269361f3adc7b1065d8b68ac0af48f6d160e09c",
         intel: "8ba6f14fb57ba7e48316312e071f7f02bbece2c4b3ed626c00766140fac4bb8f"

  url "https://github.com/neat-run/activity-feed-public/releases/download/v#{version}/Neat-#{version}#{arch}.dmg",
      verified: "github.com/neat-run/activity-feed-public/"
  name "Neat"
  desc "GitHub and Linear notifications on your desktop and menu bar"
  homepage "https://neat.run/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Neat.app"

  zap trash: [
    "~/Library/Application Support/Neat",
    "~/Library/Preferences/com.electron.neat.plist",
  ]
end
