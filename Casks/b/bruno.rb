cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.16.0"
  sha256 arm:   "35a7b3d5ff77e3dd13da315da060724f428a7e69547742a1fbc3be755d7337d4",
         intel: "555eddba7e12951434ad0775416aaabc851a801534caa198eae917a3887d0e3c"

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
