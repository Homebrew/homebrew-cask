cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.10.1"
  sha256 arm:   "510686103cc408eb09b9822a99870a8e02d99d63462cd18aefac0af09af27a9c",
         intel: "82e4a25cae5a44140b6c0bf6362c0c7d90f3b7a47e7df87056a416314dbfbca7"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
