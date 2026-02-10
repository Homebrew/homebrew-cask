cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.33"
  sha256 arm:   "add51afb5af8a0803fd1f509b45bb63e8b3ac0327520bdff100def945facb707",
         intel: "8074b41900890ce8c93a888ad5bbeb092d05656c42e3ca90c905f78641cd4aca"

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
