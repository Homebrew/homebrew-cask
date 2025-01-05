cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.24"
  sha256 arm:   "7cfb4900a7e1eb9fdd12bca2d24760fb584b7ddbf3054f3bb92d32e9e69a572e",
         intel: "73b87e66f4752ed1e13abeb7c50711c570b4d289f639bd177d1c92d875374248"

  url "https://roam-electron-deploy.s3.amazonaws.com/Roam+Research-#{version}#{arch}.dmg",
      verified: "roam-electron-deploy.s3.amazonaws.com/"
  name "Roam Research"
  desc "Note-taking tool for networked thought"
  homepage "https://roamresearch.com/"

  livecheck do
    url "https://roam-electron-deploy.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :catalina"

  app "Roam Research.app"

  zap trash: [
    "~/Library/Preferences/com.roam-research.desktop-app.plist",
    "~/Library/Saved Application State/com.roam-research.desktop-app.savedState",
  ]
end
