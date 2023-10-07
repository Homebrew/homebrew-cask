cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.21.0"
  sha256 arm:   "0e4b7ce82fad0bd7161413d6e44ff6e6a4243bf03cdfd5571e7c33b844e42352",
         intel: "bc618e4c46df7d721305833e1d4990045bf88606121e340187513707c8c71460"

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
