cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.198.0"
  sha256 arm:   "f6d103fd99d0fd1ca733f3c7021ef87ce11c98bd14e9d61b10fd9547ee564448",
         intel: "4ba5189d39375dcfcc4b609119d782747f4ba109c5927ef4e14e9e3bdcf4a40d"

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
