cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.26"
  sha256 arm:   "2102c9c34f3b60656f5e40ba60e37da55e83ea110a016850ab084e6476b55668",
         intel: "c418d5a8308ae92a8c492cb912e2b4abcb1fb9018801f35ad23e1c2f17cb4213"

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
