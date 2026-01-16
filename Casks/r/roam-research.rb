cask "roam-research" do
  arch arm: "-arm64"

  version "0.0.30"
  sha256 arm:   "32f812076e68f591aae2273b8857d84e644b63445d372424030a292c3dd9f66a",
         intel: "0c54a4892349d1a1cbc78e7f4a69dbaeb825d66d46a3edf876cc6354f271ce8b"

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
