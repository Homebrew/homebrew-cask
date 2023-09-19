cask "heptabase" do
  arch arm: "-arm64"

  version "1.8.0"
  sha256 arm:   "9dea76b20c74eb58378633be24e507d402e5f30612114128da3331db14e97c5a",
         intel: "c23f01d9fb80280229ffdcc7de48df01d6092acfb985cbb35a4b600dc6c8bd20"

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
