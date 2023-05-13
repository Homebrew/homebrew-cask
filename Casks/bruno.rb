cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.12.2"
  sha256 arm:   "8f25066224e2397a14d2b43215abc36de77adba30faa127a06e3b6bb00b44184",
         intel: "ab69eb1fd78062549b1744e8b1a3668d66646bcc4146c46e881cfb0c61c7061e"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
