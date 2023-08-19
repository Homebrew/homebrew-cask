cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.367.1"
  sha256 arm:   "a6238b240419bca7b9cad7ae13237b35990017872ee9a2fa76a9d568ed4d587b",
         intel: "c4758502288b52af20605d994340c262cfbeeb9b8cd078474e78a5ef4dcde126"

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
