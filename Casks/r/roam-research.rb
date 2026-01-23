cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.32"
  sha256 arm:   "6f5c7d97715675ad9acfb834cc9a294d4faca93755ac692fe8fa403901dc834c",
         intel: "f3d0b447f2be20d5baa152f5fd72667b2a7513c275cc5a980a3be963a5e9c2b7"

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
