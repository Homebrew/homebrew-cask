cask "heptabase" do
  arch arm: "-arm64"

  version "1.47.0"
  sha256 arm:   "0731ecd0fcb39b2a21d1c61481b6a13c16650822ca418b9025b0e1f98c7c9317",
         intel: "8dcd3afcfe4824f1ab18255cb8a105d4eff7375b05b78c454a51b58425453034"

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
