cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.27.0"
  sha256 arm:   "71409be9364791ead0ec1bbee84c76194b3d282f0fbae4e0401ab9e1f2f6381a",
         intel: "5fcc18853b7e737d6ee2470c70fdeb9fcbf12ccff837984fef490fea1c9f3cf7"

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
