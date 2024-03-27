cask "heptabase" do
  arch arm: "-arm64"

  version "1.31.3"
  sha256 arm:   "49ba0f5786364015636958257d9d3146208d210e86b989de2d9dbba6997cfa5f",
         intel: "879efe468a41e20167a7cd8c37e7a8c5f61b66a19ef21121d4a0332be0de292b"

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
