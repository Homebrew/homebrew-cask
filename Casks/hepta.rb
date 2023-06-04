cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.319.0"
  sha256 arm:   "631288940ccec1190a06128dbf70e1aa62638caa88ee852e9626c34a244207c4",
         intel: "157c4e32e81a201902cd7af1510d9c84e7a97a8fcc12281adf6ac537678df6d5"

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
