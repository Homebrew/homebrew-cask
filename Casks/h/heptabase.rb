cask "heptabase" do
  arch arm: "-arm64"

  version "1.48.1"
  sha256 arm:   "5c93721622bf2345d82b43fce3c0eb7e2aada72bf97bd02a5f3bff1cb5a7d032",
         intel: "2e0815813ecef3280e618ceb03763ebefa544af230939c1e81179a2abc528631"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
