cask "heptabase" do
  arch arm: "-arm64"

  version "1.18.1"
  sha256 arm:   "97757d010bd369a05844b10a42ce12bac655c5ebf5b5e4530476ff453f506612",
         intel: "72d27b6b54b7e0403b2d5824abda6858e4813ec4cd4023ccf723ebe5f9d6b723"

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
