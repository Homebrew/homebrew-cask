cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.14.1"
  sha256 arm:   "1a1e728dd9c825f14cedda1928bf4e00432d3417c5f409fd4c476dc685909ff6",
         intel: "67cad68b17a9d2336d2865dd610be2e0cb3bf79ab067e34e3eeb85581c36f103"

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
