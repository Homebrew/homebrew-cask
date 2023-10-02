cask "heptabase" do
  arch arm: "-arm64"

  version "1.10.2"
  sha256 arm:   "5be98343b7d5b50888a7189c19f6dd8d3b5ccd350282f876dc480c44b25a8ce0",
         intel: "ca1ead6fa711202ca3b90f2550b88b6cc7644b4c9c95e793f5bf8eaa5c059b6a"

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
