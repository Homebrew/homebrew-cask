cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.41"
  sha256 arm:   "2d3db12dbc6b71e2ea7ebcde40efeb3a2028fa147e47222b42f31d6e4f1d4f2a",
         intel: "1d032e3e4f2324abea1335b333b7b6f3f7ef2db7f0a4a2545ba10b9d6563fd3c"

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
