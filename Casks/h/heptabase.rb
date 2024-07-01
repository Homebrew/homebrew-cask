cask "heptabase" do
  arch arm: "-arm64"

  version "1.32.23"
  sha256 arm:   "4c8624715ba48b46b15603684d3f0cecdab045d6b34d1e70735bab95e7b426c5",
         intel: "666c64f69b2d0eb7083a141c2401dcada14e31a0d4edf0d17709b12a12cf5100"

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
