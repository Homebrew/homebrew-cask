cask "heptabase" do
  arch arm: "-arm64"

  version "1.60.2"
  sha256 arm:   "38a955d70a5e7926605b88bf1135dea2dcb0b6d60b1e5d99ff282b0c223b7ca9",
         intel: "9c6e38ad46c283e31b66fc0a64102afb63e039d7cbacadff3543a6c00564f2a5"

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
