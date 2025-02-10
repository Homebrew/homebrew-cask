cask "heptabase" do
  arch arm: "-arm64"

  version "1.52.2"
  sha256 arm:   "42019f17d99aef4b4545fd68123569b41c23cede7ae431b0561a95f9b6a96058",
         intel: "e769323f431380fab5a34f620d0522babb77558b8a67ac3924def39e41d8b27c"

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
