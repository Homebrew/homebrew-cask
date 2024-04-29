cask "heptabase" do
  arch arm: "-arm64"

  version "1.32.2"
  sha256 arm:   "6a765d4af258ff6d4f286d5b8a949b9758cbf20c8975efca9aa434025c78b2ac",
         intel: "e9c74fb49f8548cf1f09d4b7635486b232737a75e1e4c23ace2c302ac64a0031"

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
