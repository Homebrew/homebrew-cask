cask "heptabase" do
  arch arm: "-arm64"

  version "1.53.2"
  sha256 arm:   "5e5651b182e143ca48106ea5117e4ddb6f36453071be2213e7f0e91e63730839",
         intel: "8fdecf4c8836160281cb1585ab5f2e2bd31b5cbc27c11c94a7524df39777224f"

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
