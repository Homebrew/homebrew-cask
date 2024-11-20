cask "heptabase" do
  arch arm: "-arm64"

  version "1.46.0"
  sha256 arm:   "d1131aeee2ad332cccc574536b6627172b552e7c111e15862ea7c406c27d41bb",
         intel: "729ae35add1e2f3772e0c2172a9d46f06a6a38f179578610aab0b093679a21a8"

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
