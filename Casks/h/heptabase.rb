cask "heptabase" do
  arch arm: "-arm64"

  version "1.38.1"
  sha256 arm:   "8efb601ff844cbdde6000943ee40759cc993f4a182fd4a3dcd7292fda52f63a8",
         intel: "c832256f407742be44654a3dffb23d7e3cd31ba883e9c015b96a7de9e4d9d3f7"

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
