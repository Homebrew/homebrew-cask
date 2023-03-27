cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.286.1"
  sha256 arm:   "0f22d6ed4ce0aea1be4e7c14f0f45ecd4c7e691594e0cf99f5a5a99ee50bccb8",
         intel: "7dc10f1b804b05216dc0fabc3c17d612e133bb2a36194d53382bfdd24fb8d9b0"

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
