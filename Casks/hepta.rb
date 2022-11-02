cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.219.1"
  sha256 arm:   "8960dbd307616ded3931d2d6a9dd41790068a37e0a4845a7754c9ec53274b10f",
         intel: "d9a281484f6870ac9b3ddbf5fb61eab982bce7fa85b3ac296ebfd4eb5633a178"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Hepta-#{version}-#{arch}.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Hepta.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
