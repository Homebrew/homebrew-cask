cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.299.0"
  sha256 arm:   "94907e2b73242ad9b25b1d59e329bf96b6e99c0eebb0fa4e0668a031a269e542",
         intel: "c01646b4557c0285a3613331b852c41b89fa3657dcb804d51af60bc9d034efc4"

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
