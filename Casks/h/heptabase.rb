cask "heptabase" do
  arch arm: "-arm64"

  version "1.31.0"
  sha256 arm:   "8feac3531c6dfab1e8cf64c6938af29582ddaad2f88938a3c964b4857857105b",
         intel: "624c2de35d3b4ad744e5052237ea9d980924fc32a1f6cd84c01b12c9a0f1cf94"

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
