cask "heptabase" do
  arch arm: "-arm64"

  version "1.74.4"
  sha256 arm:   "0579455845afe257f0765b5a8cc103417d66eb6d952214a432996f7411e1b35c",
         intel: "d208c6c8e585b17e810a03c4b678726251c772d544f81624232cbcef1f35064e"

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
  depends_on macos: ">= :big_sur"

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
