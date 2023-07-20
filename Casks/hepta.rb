cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.349.0"
  sha256 arm:   "093b3edec86ad4529ad1545a3f671b3ca71ba9df5b7bdd597b8da3d6aed21a1b",
         intel: "4c7c0ace3a4e02c463a8a7dba0afc1855c932f392db0dc5220697f1c9cb2e857"

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
