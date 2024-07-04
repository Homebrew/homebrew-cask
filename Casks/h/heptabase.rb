cask "heptabase" do
  arch arm: "-arm64"

  version "1.33.0"
  sha256 arm:   "bb4efede684f67c72aa92cd1e843e496f5fb77b00c48979fc32765c2c17d8a0f",
         intel: "542949f22f0101d05562f41021c51f38e2f5232f7ac166f2514edbcd11281c96"

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
