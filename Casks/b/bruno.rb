cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "4df0be30a39ec159368079ee465849c4dad9c14df477e96712f71f42e63b258a",
         intel: "aeeb4c393b3ddca7c9eddc8e9767e6421bbf7128a611a79c8ff302ffef0807a3"

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
