cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.29"
  sha256 arm:   "9cea7e06e9a55e78ed5e99f4058f0abcde05f7833b15b3571375a04a3a555752",
         intel: "f020570ad3a9fc2a6cfeb2ed04e0bd76334c7d521ecee04020567af0a129a45e"

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
