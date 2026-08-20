cask "neat" do
  arch arm: "-arm64"

  version "0.0.64"
  sha256 arm:   "77573b588f40775baa8196e97958dabd92d01b867f263cddfbb7d667c484ffcc",
         intel: "e0f71d75d855e680bd403de694ed9d295df0a37be5b97eb8a633ede8e40771eb"

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
