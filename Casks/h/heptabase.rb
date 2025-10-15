cask "heptabase" do
  arch arm: "-arm64"

  version "1.75.6"
  sha256 arm:   "1900ad8ee15c884756196136395cefa0f9bb253d7928b84a6d3215ce61c95016",
         intel: "2dbcb04e80b08df09d7797532a86c874fa2ebb0f92474300b731cbd8e83ade0b"

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
  depends_on macos: ">= :big_sur"

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
