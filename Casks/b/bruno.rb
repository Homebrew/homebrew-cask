cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.25.0"
  sha256 arm:   "171ba09da76616fcf654acf6dc5775d735cc39ca57d3fbbedd670cc86d3d2cbd",
         intel: "a1f0a321f0f3547255c67c9fec35ab7c713a0a8bc7c3c35298f9b61ad45d7161"

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
