cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.253.0"
  sha256 arm:   "a2002f878cf3045231674637424645479ffd79a516f0c245302dbd5e8f348de0",
         intel: "b2ccddac1b36d75eef26df7de26944d8dc0032d30d5779fd738b73c3f54bbc79"

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
