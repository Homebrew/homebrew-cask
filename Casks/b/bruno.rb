cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.18.0"
  sha256 arm:   "e248ebf3f6b1d043398cce8d7742d19ea5c7c0eec63a29e494442ea9d1b3baa8",
         intel: "f537ca959b1f2b41b673418e8e0a52d29c377b5e7ad996a1c96f74a642fc5797"

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
