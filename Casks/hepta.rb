cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.251.0"
  sha256 arm:   "0fed207b84c30f9301f74b1d3946a2bf228db3353cea52cbdcbf3dd7580f3ed6",
         intel: "81efd69d404caa1c2007519affaf52e74f65a966854db0b95a7bc3b17b9f0e8c"

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
