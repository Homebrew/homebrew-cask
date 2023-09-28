cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.16.2"
  sha256 arm:   "4d6fd2d3c4b213e855f6555948791567c847d71ce66235c4d3f7511af40583fd",
         intel: "cd6b431f6aff5e929dd30d4f1a82a6a400a57354dafc6b678c21bc275acd1c5f"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
