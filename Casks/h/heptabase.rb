cask "heptabase" do
  arch arm: "-arm64"

  version "1.34.2"
  sha256 arm:   "73c2d246b0b3d5d4f371d975c186e4d08a2319683b24d751fe586479007715b7",
         intel: "3c81fe9aa6306ebe96a04ed14b734c0a351ac67e2fc2680589baeff48c7b6cd1"

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
