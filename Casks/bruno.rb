cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "31dfbf0979cef04528e84dfe112252bc281b5495979c1a4fbdedd50ef33ba843",
         intel: "1d32896cdaf7fd05defa2105c109c0807b962449130f59441fb79ee3a07dce1d"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  app "Bruno.app"

  zap trash: [
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Application Support/bruno",
    "~/Library/Saved Application State/com.usebruno.app.savedState"
  ]
end
