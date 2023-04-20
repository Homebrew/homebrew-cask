cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "7b6ae9f3661a7d40d389e46c086795a172064d045e5a43c2dd328100a1f2ee35",
         intel: "41d2d24099cc10af6d5e1ac833e52a1b9c664e8a523d1e1c5a38ef300e6bf9dc"

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
