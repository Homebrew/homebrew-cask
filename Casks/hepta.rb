cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.325.0"
  sha256 arm:   "a7c253b62f082d1a020270892a2747a57206e3d0376325c53a21a1832abaeca5",
         intel: "5352384b7f39312d6ef0c85098b2e19af5dc63e475fe24bf36e55b19757a12c0"

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
