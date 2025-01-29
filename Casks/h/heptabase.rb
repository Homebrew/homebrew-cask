cask "heptabase" do
  arch arm: "-arm64"

  version "1.51.2"
  sha256 arm:   "50c3112892a0385dfcc3421387d39923b5515436de3c8f658322e2b39704bfef",
         intel: "877193f4928babbe2ca3a604cc4dcb02bba73d7fabd0bf333426ca494dfe3b37"

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
