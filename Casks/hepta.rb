cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.208.0"
  sha256 arm:   "031cd2e9eebd3877f6e35635ed6e0507940a2f417425ad57c0cb2d3bebf6cfe5",
         intel: "af86bd32a255092460cde67c5e759d4fb11fd400a7f826b24e25277dce87f776"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Hepta-#{version}-#{arch}.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Hepta.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
