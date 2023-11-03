cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "6bb2afd16d54cff28670d86595a9a8cf9cb9727259f00623eee67ddb46821356",
         intel: "d92ff67fba52db45ccccbec240d02d577dae8dc9fce278c2b46e28075b91ecc0"

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
