cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.16"
  sha256 arm:   "11d462ce72ed33bb9f43413f8114c4012f0f410a354ae0f4515c4b3e39432410",
         intel: "aa9f3bc7fef563a5b6b3b42175f7d05db9d703d40bb20dd91be7ba6bee8044a5"

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
