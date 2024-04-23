cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.19"
  sha256 arm:   "89045a692534df7b7759559948ab9708f25b328369c0b9c31c1cf941446ee86c",
         intel: "a481f8a7b7679b23a01b2aee489dfdc41f22278e70b717084267d47812e50deb"

  url "https://roam-electron-deploy.s3.us-east-2.amazonaws.com/Roam+Research-#{version}#{arch}.dmg",
      verified: "roam-electron-deploy.s3.us-east-2.amazonaws.com/"
  name "Roam Research"
  desc "Note-taking tool for networked thought"
  homepage "https://roamresearch.com/"

  livecheck do
    url "https://roam-electron-deploy.s3.us-east-2.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "Roam Research.app"

  zap trash: [
    "~/Library/Preferences/com.roam-research.desktop-app.plist",
    "~/Library/Saved Application State/com.roam-research.desktop-app.savedState",
  ]
end
