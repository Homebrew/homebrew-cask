cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.16.0"
  sha256 arm:   "af6ed20cb071d7298ba46bfd7a10d157947db59fb6df2e8319e9e5c2d31ea8ff",
         intel: "15b93b6e2c94fd8d854819a843dea142b4afa72271a184e21d06c412897aad4a"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
