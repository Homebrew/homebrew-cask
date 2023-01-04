cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.248.0"
  sha256 arm:   "5dc079c4e87da4c66a3b070fd3eebb0f64dd581ddd5060307d38a60c79c8e79b",
         intel: "9a2386fe7d5ea72904813dd77425974517ae88b32fc05d02b4f07d8de9b25f59"

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
