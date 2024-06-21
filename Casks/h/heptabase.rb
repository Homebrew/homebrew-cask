cask "heptabase" do
  arch arm: "-arm64"

  version "1.32.20"
  sha256 arm:   "4ff10d435b77ecf848f89c58afab89eadaaca7e31463c67db94bd8609d717718",
         intel: "dd162fbab708635cd7a0d27220478063dcbe03b553f9b998dd1d274a3f100c9d"

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
