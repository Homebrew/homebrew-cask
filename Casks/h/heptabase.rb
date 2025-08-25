cask "heptabase" do
  arch arm: "-arm64"

  version "1.71.1"
  sha256 arm:   "050dc4c764c8025e5a3eef51e2b3b1a93b7853f882aeb583bf9d25e65094c945",
         intel: "650c4ddc3f56206f9c85b3c88ff7f7b04ed82177fd6403dfd94c6a8bf3b6408d"

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
