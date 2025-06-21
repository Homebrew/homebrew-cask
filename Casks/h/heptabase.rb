cask "heptabase" do
  arch arm: "-arm64"

  version "1.58.3"
  sha256 arm:   "0749621bb222f71399b2df23ad253b2c5b7c5f9cbd69ce84e8948b062c5b98a3",
         intel: "1f253960dafa6b3ddd1a2e68bfe986476e0937037032428cd20281a619dad61f"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
