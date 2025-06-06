cask "heptabase" do
  arch arm: "-arm64"

  version "1.58.0"
  sha256 arm:   "f91a790fb09d048ebc368c135bf44f8237a0d6a40f861f57d674f5cebfb41eda",
         intel: "853d181d4d8908d5de15bb2c4348f379d1f42b75ae54dc929b0d7564087f65af"

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
