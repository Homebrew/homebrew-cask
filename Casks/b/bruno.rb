cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.19.0"
  sha256 arm:   "aa2d6285147df34f754312824986e323d245df0fc2aaff63e99c2586cfabcdaa",
         intel: "aa0751d03908076aa92edc077cf8d5f226b4b83e0d1637797909173f63cb8617"

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
