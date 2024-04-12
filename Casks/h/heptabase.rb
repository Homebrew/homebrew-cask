cask "heptabase" do
  arch arm: "-arm64"

  version "1.31.11"
  sha256 arm:   "b6fe8918e65c617fad33c20605d20c8a95a65502bdaa32a381679295f731c30b",
         intel: "c011d03f688ca0ac8e866118445c57cb8b3862e374a468da874e5f57cf354599"

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
