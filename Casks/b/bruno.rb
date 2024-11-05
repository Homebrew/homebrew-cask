cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.34.2"
  sha256 arm:   "4761a693a24eddc91eefc1d660e3b391c0a297f2431c10dce362dac1d200376b",
         intel: "b768d2e255100113c0bc06ab729852c54e66feb1d5d7f5902045e088c87644f7"

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
