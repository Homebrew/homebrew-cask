cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.38"
  sha256 arm:   "32b84c73888498760a7bb4504e141ac25e6d7f26d954d62e468642335cde7bf9",
         intel: "36472d666e9ffb6b3e1210eec2dbac4b960ab7650a268e096de77c964107e55d"

  url "https://roam-electron-deploy.s3.amazonaws.com/Roam+Research-#{version}#{arch}.dmg",
      verified: "roam-electron-deploy.s3.amazonaws.com/"
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
