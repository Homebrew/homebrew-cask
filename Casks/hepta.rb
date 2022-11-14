cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.223.0"
  sha256 arm:   "63268fef50482964b1d9acd21617bc87afda50678d8117cf8ba4b20973eec538",
         intel: "8e2d4e829de8875991194bde01a4c2e04aacb8eee2f9d7df6a24164a42919eab"

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
