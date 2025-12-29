cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.28"
  sha256 arm:   "b29a9bbe2a1fc401294298d0ed91b152f2d88ae89062ee70197d8653dbc94f5a",
         intel: "86e9cdc54bdd788928d44e8bfa2db7ac745cffffcf3f99c7eb7d91d7c2bc5cc7"

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
