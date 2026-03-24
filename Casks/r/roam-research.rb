cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.36"
  sha256 arm:   "82bc99aefd51e626a78d8a4a22f7aeaadf89e5cc814415e7cfa693bd61b78907",
         intel: "d8697fbd2afab43e7805391af9765c50aea85005a1a66e614629f62af6f6d9c2"

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
