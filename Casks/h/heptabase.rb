cask "heptabase" do
  arch arm: "-arm64"

  version "1.31.9"
  sha256 arm:   "2dd426ae1f3714cb7ce560caf3f284054204278dd3af19a0504f8d4ab2ea4853",
         intel: "ec6a549939c50756fa7177ab707bdd97b91c313d4adb9d31661798d3b30e419b"

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
