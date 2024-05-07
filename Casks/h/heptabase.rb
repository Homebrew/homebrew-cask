cask "heptabase" do
  arch arm: "-arm64"

  version "1.32.6"
  sha256 arm:   "24087d609f48ab8dd5e5ccebee2328c35530b19c970603e64dfa978ca18d60b4",
         intel: "340b309161b9d93955906f66e6e0683cd8e9de3e52c835aea92a50a94807a6c0"

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
