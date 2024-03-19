cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.12.1"
  sha256 arm:   "9c57f3c8dff677bedbc0a2547774f122299a87fc6e549baecc6bc4f681b645e7",
         intel: "6020b5e681182e29dfbf39de3c7b92838c72de67f31b4800f094a2fd7ab91f44"

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
