cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.321.2"
  sha256 arm:   "426df4a562f3fe43db39c922f6e8aed9cc339000c9fdb68661907f5444c22cc6",
         intel: "c95c2e5b646c0d326e16988147a467b7a6ffca85b3ee2df9f535cab75c9f6d1a"

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
