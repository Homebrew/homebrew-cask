cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.34"
  sha256 arm:   "ebf408d4ad1cb60cee2cf2b2a934f65e2ecc369fd70dc69134a6d204e7e1f22e",
         intel: "6e41136e8ba1681245b453611894082203c57b8781712a750b43570d0853df16"

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
