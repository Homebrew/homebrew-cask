cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.25"
  sha256 arm:   "97a5802de1f6e534b48366f0bafad568b49a5966a84a9868e737469cd029ac76",
         intel: "40a566727fecdd2519253104600bab9cb354a21bf534ae2012383216ed8879c6"

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
