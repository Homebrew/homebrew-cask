cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.43"
  sha256 arm:   "d34130c0cbd4e499b786e50a3ae8170f576d0ef72aec9982d907c68dc29318e1",
         intel: "e979a6fb83f5cac659097c8c5200d9857e2766180164f6d68c64671ce1a56270"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.roam-research.desktop-app.sfl*",
    "~/Library/Application Support/Roam Research",
    "~/Library/Preferences/com.roam-research.desktop-app.plist",
    "~/Library/Saved Application State/com.roam-research.desktop-app.savedState",
  ]
end
