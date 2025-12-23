cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.27"
  sha256 arm:   "bc2526ba1d8debc1c769d137504ab292b62119129e26ee0e1edb8ffa4b921394",
         intel: "1f08e4f9cb152dc5e891ecf3b10efc504e59ac77397cadf4b60f768ceac0f334"

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
