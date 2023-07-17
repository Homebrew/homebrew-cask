cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.346.0"
  sha256 arm:   "60dc54aeed359935f2079563cdd5b650cfac93b209cc13fe79ed340d8f9e7854",
         intel: "962b3c0b12843a8eb8d8d19744083bc10727df7d3b83b41a71c175e51d263f1e"

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
