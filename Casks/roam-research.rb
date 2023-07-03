cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.18"
  sha256 arm:   "027caf1426f2522ead720c584008feccf2e5e3f91587d65eba97ad461cc7d0f5",
         intel: "8f214d1f7aab82bb1fb44c4bfdbdadf1b6375b77d8573f86a75d40b9a20cc5b8"

  url "https://roam-electron-deploy.s3.us-east-2.amazonaws.com/Roam+Research-#{version}#{arch}.dmg",
      verified: "roam-electron-deploy.s3.us-east-2.amazonaws.com/"
  name "Roam Research"
  desc "Note-taking tool for networked thought"
  homepage "https://roamresearch.com/"

  livecheck do
    url "https://roam-electron-deploy.s3.us-east-2.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "Roam Research.app"

  zap trash: [
    "~/Library/Preferences/com.roam-research.desktop-app.plist",
    "~/Library/Saved Application State/com.roam-research.desktop-app.savedState",
  ]
end
