cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.50"
  sha256 arm:   "59fc916a2a0f7254201358ef1b6b5af0c2c1ca3997752db5d02a1231329cd3cd",
         intel: "aa1f0a66fb413810155273a1030d1dcdb0c83cab1ed060616acec4ecfa058d7b"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg",
      verified: "github.com/generalaction/emdash/"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  depends_on macos: ">= :big_sur"

  app "emdash.app"

  zap trash: [
    "/Library/Logs/emdash",
    "/Library/Saved Application State/com.emdash.savedState",
    "~/Library/Application Support/emdash",
    "~/Library/Preferences/com.emdash.plist",
  ]
end
