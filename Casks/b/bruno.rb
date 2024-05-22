cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.18.0"
  sha256 arm:   "773ff4f2f3e4bfaca2a5cc80c67e128826e12da2a3f3b81e99d5d7a3d729a817",
         intel: "a64d772622cc5a36245684bd6807023f133824546d03b51b6f79ef913b194773"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
