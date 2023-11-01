cask "heptabase" do
  arch arm: "-arm64"

  version "1.14.0"
  sha256 arm:   "16be61d64a9c2d93b57c332549dd6ad7e9a8a261eec9227a6a5fdc0204e06486",
         intel: "fdae3ec5b506d01cb5ff547e4954eff94716f13e9ca82cbe3d21e5369e635bb8"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
