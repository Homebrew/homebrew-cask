cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.263.0"
  sha256 arm:   "9a90215ce9130b094963f8b3d8967f2813ab13c3cbe52c300becda574d694cca",
         intel: "18923993b3c0f643ccb3de083a828df474b11449a3ee1b8e2f64c1be10543b56"

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
