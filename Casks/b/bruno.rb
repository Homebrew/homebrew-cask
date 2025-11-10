cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "2.14.1"
  sha256 arm:   "627f73999d33b77bde4e5aea48ba57fd0dbd5a63ed137f63e050e5fcacacd105",
         intel: "8935098948d520fc7fee98a6d8e267d1f5582ef1d80c217472f7619d12e6634e"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
