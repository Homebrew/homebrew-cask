cask "heptabase" do
  arch arm: "-arm64"

  version "1.12.0"
  sha256 arm:   "6491ec490ea080ebf12de8c92117021708c1f3e01c5c4932264a336bd1fe9f89",
         intel: "b1c0b4397ecf0f0c04dff5099ac050933c55a3455607c385947e29a62fd2fb46"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
