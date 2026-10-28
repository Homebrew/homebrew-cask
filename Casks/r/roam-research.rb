cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.42"
  sha256 arm:   "67c7bf1129fdc4e2a63509ac3a8dd77111d430041dd203681f578e75a6cf1096",
         intel: "be33868bcd6dc5408ee2f666e91fb15972ee11378ecc3ff294136af5841ef658"

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
