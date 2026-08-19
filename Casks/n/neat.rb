cask "neat" do
  arch arm: "-arm64"

  version "0.0.63"
  sha256 arm:   "52e31f839420ab47a7bb00b2d6570def5e332ddf56e9512814350ee57816430a",
         intel: "6f53e67fec43e9c9d004a766281e74a0b2d76433e372ca2b8b888f804df0abc8"

  url "https://github.com/neat-run/activity-feed-public/releases/download/v#{version}/Neat-#{version}#{arch}.dmg",
      verified: "github.com/neat-run/activity-feed-public/"
  name "Neat"
  desc "GitHub and Linear notifications on your desktop and menu bar"
  homepage "https://neat.run/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Neat.app"

  zap trash: [
    "~/Library/Application Support/Neat",
    "~/Library/Preferences/com.electron.neat.plist",
  ]
end
