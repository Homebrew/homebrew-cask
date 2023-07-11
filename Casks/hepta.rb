cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.341.1"
  sha256 arm:   "d505fb9ad4c47ef1942684838b90df8bce9b3bacd450b38470f844b9d2381327",
         intel: "a7e14c3233747a04b05b79c99e1ecdd1b8521c685e320ccbabf0cd0a37b35f08"

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
