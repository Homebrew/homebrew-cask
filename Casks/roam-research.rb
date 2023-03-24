cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.17"
  sha256 arm:   "814ebea1e795583319e8c650c9ed04942e528aee04700bc22d2eb88f8961586f",
         intel: "f04edd739c5f302d86029d9c0d4c54700c34b3ea2ab5878575f24829dcd13fca"

  url "https://roam-electron-deploy.s3.us-east-2.amazonaws.com/Roam+Research-#{version}#{arch}.dmg",
      verified: "roam-electron-deploy.s3.us-east-2.amazonaws.com"
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
