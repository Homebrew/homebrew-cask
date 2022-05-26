cask "roam-research" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.0.14"

  if Hardware::CPU.intel?
    sha256 "e2e94fc056e3fa187b8f2e6bce6eb40253b7e2c0bea64730199667ab2c183e52"
  else
    sha256 "b8508ca6d392cd5cc7c350325547e832db1ae552bdf75c9d86460e8e429f8ec9"
  end

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
