cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.29.1"
  sha256 arm:   "3aa6ca663fc8050ce4e49f77e01634707b84ad6dac9fe2a269f699ec0dd52981",
         intel: "7fe62d2332e03fbc17dddfe7aad02e9224bc209ffe64104d41503ff79b00269e"

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
