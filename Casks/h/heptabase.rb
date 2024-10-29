cask "heptabase" do
  arch arm: "-arm64"

  version "1.43.2"
  sha256 arm:   "2d55866077871480da5e593f0466e3f8a4fededc3dc659d5bb252ad2df78379b",
         intel: "6c9eab7ce7f089025e7fa9c1c7779ba7caf00673f648a782dd8512e65b46a8f1"

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

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
