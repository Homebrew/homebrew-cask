cask "heptabase" do
  arch arm: "-arm64"

  version "1.56.1"
  sha256 arm:   "e1c0e01415bfa288b900e47840afcd1e1c12d6f186e35d46e4e66bd955df743d",
         intel: "a6f4f0214dd6f61a909d8fba49d235de3e9582b26035bd64e5d1d555c8900715"

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
