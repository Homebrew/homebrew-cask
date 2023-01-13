cask "neat" do
  arch arm: "-arm64"

  version "0.0.56"
  sha256 arm:   "f9859a9fe60c4ede0dc2aaf7b6b3f5e74ced86a9ecc75bc27c38103cbc9e720f",
         intel: "9eb1fbdd8c0e87aa248e574dc783f909fd7413906936d93b0701ecf86c88669d"

  url "https://github.com/neat-run/activity-feed-public/releases/download/v#{version}/Neat-#{version}#{arch}.dmg",
      verified: "https://github.com/neat-run/activity-feed-public/releases"
  name "Neat"
  desc "GitHub and Linear notifications on your desktop and menu bar"
  homepage "https://neat.run/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Neat.app"

  zap trash: [
    "~/Library/Application Support/Neat",
    "~/Library/Preferences/com.electron.neat.plist",
  ]
end
