cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.207.0"
  sha256 arm:   "944892af336e94a5a217bec3053dc9baaa4ab09edbfa6646f8f21661dec3320e",
         intel: "8ba8ec9072897c831af34d99d8c001faecd62bd78788aeec1dea60f6b3c4d7de"

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
