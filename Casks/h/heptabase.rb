cask "heptabase" do
  arch arm: "-arm64"

  version "1.35.5"
  sha256 arm:   "e273e53e51edbd111bf398fc5a6353ac499888ce016328ce5119d1ba92d8811d",
         intel: "48c51d73b3ed8cd4edf34b52180cfaa9e407a087e400f58ef186205c176a2a20"

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
