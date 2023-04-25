cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.298.1"
  sha256 arm:   "3be0acca725bc4a22b4d3307f93a5b155f4f5dfd930e9966a09651712d07bb1f",
         intel: "271aaa392e06930385719de7e114f74ab805cdd4f414646105b24220a6027464"

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
