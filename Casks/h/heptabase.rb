cask "heptabase" do
  arch arm: "-arm64"

  version "1.75.3"
  sha256 arm:   "38121d8e4fb73285226bb64e74b2ff34ccb9d1856e98a8ea9c4509f5acd6b397",
         intel: "ab16f97fdd67028a342870189ac1c376e5b7d95542c47ff37feee64c1760500d"

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
