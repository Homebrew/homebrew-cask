cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.23"
  sha256 arm:   "d3d401941669e6a5d5d8c1b55b9e73e0f092c5afda62ce1950f831fa97ae91a0",
         intel: "b6c45ffdd492e5a5566d9cee77c37b2344555c857caaffd9156723ce2e44ca18"

  url "https://roam-electron-deploy.s3.amazonaws.com/Roam+Research-#{version}#{arch}.dmg",
      verified: "roam-electron-deploy.s3.amazonaws.com/"
  name "Roam Research"
  desc "Note-taking tool for networked thought"
  homepage "https://roamresearch.com/"

  livecheck do
    url "https://roam-electron-deploy.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "Roam Research.app"

  zap trash: [
    "~/Library/Preferences/com.roam-research.desktop-app.plist",
    "~/Library/Saved Application State/com.roam-research.desktop-app.savedState",
  ]
end
