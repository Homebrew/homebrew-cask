cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.7.1"
  sha256 arm:   "bd356177de2928f9d309b496b7ddf9e66cbaaf9ed0de20ade203403dfbc82c95",
         intel: "cd4d4fc352d21d2fd62727c9ffb911b3dba4cdc9e668a558f57c7e7626ef573d"

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
