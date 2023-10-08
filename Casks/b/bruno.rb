cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.21.1"
  sha256 arm:   "56d5b2a83cd930426c77e9e4a7245eb2c87a630d67d7897b9a5a7b1197abf464",
         intel: "9d24a905b8955a1108582b2bec72f65bcd4353f23eac04f0ff1ba1755f9ae8a4"

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
