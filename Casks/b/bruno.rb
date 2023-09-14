cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.14.0"
  sha256 arm:   "dd4003555df9f96220c38b562ce7085991b0b766a874e7618e31e326a9b7c4fe",
         intel: "a9e38f3b77b4146c4b379fbc54ce08a2e0b963fcc0d884465909f26fb04dda36"

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
