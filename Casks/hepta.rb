cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.328.0"
  sha256 arm:   "bd6c15117d16a1cb6827199da173807f2d5325904ce6af4a5efec4509a0772be",
         intel: "ec4a7765217e89648de56e90d4de4e41e5e7cbe501ceb1d69e4a3ed09ec289f7"

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
