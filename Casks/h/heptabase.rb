cask "heptabase" do
  arch arm: "-arm64"

  version "1.42.1"
  sha256 arm:   "6b2cbda303b09910cc7612a7c7799d5a78fb793a334a21d51f4a388a7bb79821",
         intel: "08f07c527c460198ade6f573a6402a3c40c1c0becc24f974371cf5f7e2b4c5ce"

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
