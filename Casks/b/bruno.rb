cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "3.3.0"
  sha256 arm:   "a09ca59f04bc703c8ab07f2062114f5ef1428b57991eecf336298a6c0d821588",
         intel: "63398e44b3901a557456f4fff6f8df78957dc1da35f2740dfc0b86a514f0a805"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
