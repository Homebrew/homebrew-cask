cask "heptabase" do
  arch arm: "-arm64"

  version "1.80.0"
  sha256 arm:   "55e0b80e1d1bce3cd8e5acec8b479811e9d5a182a73b22285fc475b083b9a38f",
         intel: "8dbaeeaa3b1b0612bea489bbb357548fd3f86021cc89fc78892a1e721c59ff39"

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
