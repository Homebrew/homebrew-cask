cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.240.2"
  sha256 arm:   "4f98eef064763598ac9bc898ab732b5ff441bc711e66d2c4b5510ef6ef5b7309",
         intel: "db2ce08ed631d45c190834e36cf0bd94112765c02f180863cfb366ea6038b915"

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
