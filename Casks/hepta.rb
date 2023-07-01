cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.330.1"
  sha256 arm:   "837ae48b44b8afcd3aff4da7686ef3a4c4b34f9e4e1fb94aa98250c6f1e77e7d",
         intel: "9e122256dd0971a818acde2eb27fa04ccd920b4d33e2c64c9dcd182e6be43b90"

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
