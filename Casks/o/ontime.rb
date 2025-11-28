cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.2.1"
  sha256 arm:   "e0025f115a757a99ca32fb7b9688806f955800f2f5cc6d1f74d3a39a88eb1bad",
         intel: "0c984b75a13ca7282f194a08f220000561c2680cae4da1e65aa0000af0460508"

  url "https://github.com/cpvalente/ontime/releases/download/v#{version}/ontime-macOS-#{arch}.dmg",
      verified: "github.com/cpvalente/ontime/"
  name "Ontime"
  desc "Time keeping for live events"
  homepage "https://getontime.no/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "ontime.app"

  zap trash: [
    "~/Library/Application Support/ontime",
    "~/Library/Preferences/no.lightdev.ontime.plist",
    "~/Library/Saved Application State/no.lightdev.ontime.savedState",
  ]
end
