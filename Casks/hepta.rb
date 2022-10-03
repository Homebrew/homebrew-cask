cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.201.0"
  sha256 arm:   "45643b08de86a83da6465c72b58efbaaf872f8691575826ef8b86ea02c8bfb0f",
         intel: "94966d3fe96dd54afbc54180d48863b823d45aef0054de4cf7bb145c7b1dc5ac"

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
