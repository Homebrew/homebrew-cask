cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.296.0"
  sha256 arm:   "ceb9c92cd2031ca5d1ba1f9bff81c03a63ad6844e490b8a5bf8abfa988d484e7",
         intel: "35c572f64f6d461937e0651760e167a71011493a4d506798b59918f8999a9d43"

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
