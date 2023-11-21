cask "heptabase" do
  arch arm: "-arm64"

  version "1.16.1"
  sha256 arm:   "fd46958aae09c9fb023e760732236228b3f12565e7ef5846d5dcb938d570d987",
         intel: "e8aa53e3f7556a30e644fb7f9c1c31700feb2405fb146683e3e3605ae19ed5db"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
