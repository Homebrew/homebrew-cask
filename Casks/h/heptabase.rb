cask "heptabase" do
  arch arm: "-arm64"

  version "1.51.1"
  sha256 arm:   "b6f07d18a4315e56436d967b4ed49e330a6db8c93269b17465c9639a77d78c9d",
         intel: "941e6b78429ca67f7d738037dd770fce295a2a9b624245d2e1a027417543f845"

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
  depends_on macos: ">= :high_sierra"

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
