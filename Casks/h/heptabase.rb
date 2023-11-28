cask "heptabase" do
  arch arm: "-arm64"

  version "1.17.1"
  sha256 arm:   "2992b9095f1be7d8b3768805471457b793dfccc617726a5ce7af00cde0e9ab4c",
         intel: "7abf3b2c44f7822b7fe70ed9b2114024e10f685f78cc8838f8c63e1b84b881f7"

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
