cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.6.1"
  sha256 arm:   "b821e296a3c55fd6b139b4ae933e8a40d8392a99f60452dbfe4a8b57d33849c4",
         intel: "7608c3e7c4b93341a2fbae70b2db790e0f6788cf6588ef4a90ce8b9a02889812"

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
