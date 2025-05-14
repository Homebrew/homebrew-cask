cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "e153c4151345e9dd490445e620174401d55f057b4b4cabf3e8c0b6b43087e7b7",
         intel: "e25737497e860766c0e2680fc8e4a3718ea27426d671eb470f3c57b3202d19b8"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
