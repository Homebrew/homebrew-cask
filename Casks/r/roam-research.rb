cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.35"
  sha256 arm:   "e483b035f03823434ca18d6726ccbbae70c37d06e78fb8f21ebd0253dbb2f15f",
         intel: "d54bf5c86e07bf2cec01d9f28f33e264b79f073c5eabe42f72131b4efca2870b"

  url "https://roam-electron-deploy.s3.amazonaws.com/Roam+Research-#{version}#{arch}.dmg",
      verified: "roam-electron-deploy.s3.amazonaws.com/"
  name "Roam Research"
  desc "Note-taking tool for networked thought"
  homepage "https://roamresearch.com/"

  livecheck do
    url "https://roam-electron-deploy.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :monterey"

  app "Roam Research.app"

  zap trash: [
    "~/Library/Preferences/com.roam-research.desktop-app.plist",
    "~/Library/Saved Application State/com.roam-research.desktop-app.savedState",
  ]
end
