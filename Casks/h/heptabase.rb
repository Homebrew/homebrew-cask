cask "heptabase" do
  arch arm: "-arm64"

  version "1.39.0"
  sha256 arm:   "483e2e0217e525f968fe64e26debc9b801c45317885e0dd4571260f167c87686",
         intel: "c02418c5553000dcfcb6aceb9ef31e9ece76e98fa4be396d3364ed37d0c3b9ae"

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
