cask "heptabase" do
  arch arm: "-arm64"

  version "1.43.1"
  sha256 arm:   "088276e7d2ef7cea5ced2b5c6c77e86bbeef390ddb5c250a96b6ccf7d6830734",
         intel: "f5a04eb96db49b5281d31df4728d5c081ea40f2adf10a9c72a1ac323758b35ed"

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
