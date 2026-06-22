cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.37"
  sha256 arm:   "bfd468df2ff7393a6b2c9f9ef86e5b6a57f0634178c4b647863bb3afda0e1122",
         intel: "4b589e1dd7558f5e2a0a8ec455c5997d3bb79ab74364960b4758ec330c872a85"

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
