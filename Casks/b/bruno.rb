cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.39.1"
  sha256 arm:   "2b175ae54a34b722dbada104ad4aac4a410cda46ea10882a262f5bc9d0d997b8",
         intel: "56aafd2ac27bd8c146ea9b9c5c8d193a9a92e881332da1f9721f0b01ba900dc2"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
