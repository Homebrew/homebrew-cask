cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "1af0d7da1fc07ac2a9c37e7c508545f387a286bb973fbbad859fe4f74bf4ccb3",
         intel: "95c1b3c0d69dc237456a268514028b051ff321e1588d4683b7a246cf61e603da"

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
