cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.23.1"
  sha256 arm:   "21a25931800a0f8339de9ddf4ec982103d15907db5671b9ebc0d52cc7652a12f",
         intel: "bc023f367b403a4df5c978f609fb47cab5947b3605de8cce86021e0def33e66a"

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
