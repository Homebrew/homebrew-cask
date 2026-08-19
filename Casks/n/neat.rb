cask "neat" do
  arch arm: "-arm64"

  version "0.0.61"
  sha256 arm:   "11bd94e0fdd25f72c65c822dcc1845e8a4289108b83b6c9f672449b772f1eb2a",
         intel: "2275ad550a2576aa2ed1f380b15a06affb4958a43fe672438f3f00dc50194fd5"

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
