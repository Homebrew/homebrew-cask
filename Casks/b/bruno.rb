cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.16.4"
  sha256 arm:   "00d4052e74d97fbdd3ea5a1c230ddd3db8899e6e1630923ebc9cd00f26c99c3a",
         intel: "8c376107377b2e07f0b2cf3cdc13ea328d6a5bcad6b227ede7c8e38959ee26e9"

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
