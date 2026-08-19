cask "neat" do
  arch arm: "-arm64"

  version "0.0.62"
  sha256 arm:   "73fbb1cd93f160d7c7e789025631fc32a40399433a2fbf124758f618428b556a",
         intel: "7f7a024d850388b74bf770aed608ecd7b1a285b6689dd7ba6e3660ec30cf0230"

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
