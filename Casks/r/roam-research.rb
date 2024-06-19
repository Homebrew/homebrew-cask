cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.21"
  sha256 arm:   "efdfab00e9bc12519df33204e11660f0c2c12ee6a6466c1c8fea027bec58a4e7",
         intel: "c2fa19c7f4d4e641696a9d572cbbe100eddd154678fa139d059537f4feb8b1a2"

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
