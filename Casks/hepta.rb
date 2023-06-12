cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.324.1"
  sha256 arm:   "3987b020c41ad63cdb9141a45b05e51fdf0fcaecf3ab2be9407d3b6a8c8ea6dd",
         intel: "a8e216d27bf4a9e663a3f06c2d138945fd12e3862d02cc8e879a2b85e0cb5ae1"

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
