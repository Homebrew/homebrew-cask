cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.40.1"
  sha256 arm:   "3d91ec2602b590655c8f3dd1bb5a98820fbfd185a06fe5f9b218ead387b6c4a9",
         intel: "7b5b04966baad570d68bdfae2b58177088b8336113f4cf16a17e95bff9c6d4bf"

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
