cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.31"
  sha256 arm:   "6794c165b1163ecfb0eeaf05a2a87fb49d38a998be74a63a7f5051ee5ca3c14b",
         intel: "f177f282a4f93571981a134dc6c3fd5cb52435a9fc9a3586071459435cdf4c4a"

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
