cask "heptabase" do
  arch arm: "-arm64"

  version "1.101.0"
  sha256 arm:   "b47aefc1cae77a2d0c8e73c1f2ad77a7482059886782c55d7443f353ead9b55e",
         intel: "7bf371de3f92cf60f28672f1d9fc1750811697ac15cb72b2c5344cbbdd92c2be"

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
  depends_on macos: :big_sur

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
