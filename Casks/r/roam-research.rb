cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.39"
  sha256 arm:   "293a3896b28147e4b1140c2d2f480c07663c38f60d58462de9160d659985628d",
         intel: "d42a367792fd9cdc06e264ddce7cdcbb953652dfa54d5e12c8a9dbcfe83c37ed"

  url "https://roam-electron-deploy.s3.amazonaws.com/Roam+Research-#{version}#{arch}.dmg"
  name "Roam Research"
  desc "Note-taking tool for networked thought"
  homepage "https://roamresearch.com/"

  livecheck do
    url "https://roam-electron-deploy.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :monterey

  app "Roam Research.app"

  zap trash: [
    "~/Library/Preferences/com.roam-research.desktop-app.plist",
    "~/Library/Saved Application State/com.roam-research.desktop-app.savedState",
  ]
end
