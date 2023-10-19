cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.26.0"
  sha256 arm:   "3d5851b43a4e3782f32ade04336be5d8e51e8b692fbcac44ec53418d1e3b6c68",
         intel: "613d84c746c87ba34a01d48db89a465f29b5710260bca4a499b13239810d5406"

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
