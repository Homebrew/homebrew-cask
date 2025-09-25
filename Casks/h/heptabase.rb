cask "heptabase" do
  arch arm: "-arm64"

  version "1.73.8"
  sha256 arm:   "539133b0a687a40f693a1d3ec5587fb32b96adb993f6787072f6568f01d74fff",
         intel: "38d4b11b5498f7c81c41c6580d5063b90ba7bb6230c29de68ce037e9256e8ffa"

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
