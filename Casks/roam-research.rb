cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.15"
  sha256 arm:   "4407df5ac97d3013dbf113d09da33d01264d94f8f4c30d5546afe237e6af5834",
         intel: "c270b957cb7ba0c9fa7b7ff8ff9a2fbe2ed3c8dba24ee2584dfa487022e1cc51"

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
