cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.26.2"
  sha256 arm:   "0ef878baadbc6298fbb96bb2214b7017507d5001137f5c2e088c4b1816ee0d76",
         intel: "20bc7a105b5fc9037c70b2f00732b7becf4239beb48161b7e18c4eea51f1bc9f"

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
