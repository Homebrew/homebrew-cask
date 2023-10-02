cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.17.0"
  sha256 arm:   "8c3a08f550d92c5e18a5a8195dac49096e821a1b105255e7752f9d747f94a034",
         intel: "65264ff816c2a296dbfab4aaf6b452bfc20c6dd2c1ea1662cf2d4086697d1aef"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
