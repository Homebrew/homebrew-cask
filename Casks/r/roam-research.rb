cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.22"
  sha256 arm:   "fa5815e53a53ccdee626fbd512905b9aaf9a04e04acb50a962430d85fa3184ad",
         intel: "180f66e33fb70f2f3b0f3fd83c6e4c61b44443570401d5ff309be4009fdf7b7e"

  url "https://roam-electron-deploy.s3.amazonaws.com/Roam+Research-#{version}#{arch}.dmg",
      verified: "roam-electron-deploy.s3.amazonaws.com/"
  name "Roam Research"
  desc "Note-taking tool for networked thought"
  homepage "https://roamresearch.com/"

  livecheck do
    url "https://roam-electron-deploy.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "Roam Research.app"

  zap trash: [
    "~/Library/Preferences/com.roam-research.desktop-app.plist",
    "~/Library/Saved Application State/com.roam-research.desktop-app.savedState",
  ]
end
