cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.22.0"
  sha256 arm:   "9930dea00fa76fa47fa1585f305283cf77187ba5f9b10827bbd3207266bc5eb1",
         intel: "cf3f71fab51f95092eeab42c23ef919f767d498afb2ac00c92c10435797339e9"

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
