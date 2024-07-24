cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.22.0"
  sha256 arm:   "5c6b1656659e822a25833c8662bf2fbd7380d9a1d9e49f462f2a89c30e63453f",
         intel: "b2496429f0735240908caa060a76efbac0ae782cd58cec1b1ebdcde38814dcab"

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
