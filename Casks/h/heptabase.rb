cask "heptabase" do
  arch arm: "-arm64"

  version "1.87.2"
  sha256 arm:   "9f9f96a5eb82ac31d0f4a18901c11802b92e09852d40748f874c48c9739871f7",
         intel: "942830891c1cfc000cd382716d196500b69f74a6ec8bca18bcbaca4ca6320e14"

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
