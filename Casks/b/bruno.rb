cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.12.0"
  sha256 arm:   "e2dfb37a61a2dd695f256289de99decf1062c395a6e11580a145010db55dd471",
         intel: "81f4a4740076bf363bc61487b386effdbaf173a54cc1d5862d29f53549d18e11"

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
