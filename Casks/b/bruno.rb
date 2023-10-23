cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.27.1"
  sha256 arm:   "5db70e371b115dba2ae5df53c059761b41a5a25f31c1ff478e98a7934c7f6a0d",
         intel: "53be984769af6e73f1f72313b7c560445d26b255ab2383fcf6c4f8429510ce32"

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
