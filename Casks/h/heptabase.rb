cask "heptabase" do
  arch arm: "-arm64"

  version "1.29.4"
  sha256 arm:   "e9ff52c8d0ea5591a559da80dd165a249f5936281dafa7d951c566d34dfc6d7f",
         intel: "91d413b7c8ba5e75fc05192adbfe38ecd99651791dad669903acb0c01e2d7228"

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
