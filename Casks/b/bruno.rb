cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.3.2"
  sha256 arm:   "b76f6ed8f3bc6b26aa5f63cd5c12a407a23dcddab2ea9bf2c30989128138e0c6",
         intel: "e5b821edd10a7ec21dabbb4e59a982bd68cc8686ba493502c13072b001ed9784"

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
