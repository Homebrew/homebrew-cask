cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.40"
  sha256 arm:   "e1c84a01fd6c11acaf5d90cb3f312d17db5c9136cbb98982e95c16a1375246aa",
         intel: "6039c99c05febe208248320d4b15cc0bdd71ef38c7f14798426b8bce0bc41a9c"

  url "https://roam-electron-deploy.s3.amazonaws.com/Roam+Research-#{version}#{arch}.dmg"
  name "Roam Research"
  desc "Note-taking tool for networked thought"
  homepage "https://roamresearch.com/"

  livecheck do
    url "https://roam-electron-deploy.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :monterey

  app "Roam Research.app"

  zap trash: [
    "~/Library/Preferences/com.roam-research.desktop-app.plist",
    "~/Library/Saved Application State/com.roam-research.desktop-app.savedState",
  ]
end
