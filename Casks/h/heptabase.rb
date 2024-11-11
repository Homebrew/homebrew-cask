cask "heptabase" do
  arch arm: "-arm64"

  version "1.44.0"
  sha256 arm:   "64ae92107b8e24fb12b70e1cef34d7bfa31e7ef0d978d1595fcae5cf0f0483b2",
         intel: "64659f13a4d245b26f945fa4f0832116df4665d751ee8dfe5c3dd817e4298cf2"

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
