cask "heptabase" do
  arch arm: "-arm64"

  version "1.29.5"
  sha256 arm:   "6d8347fa472693b530f6ed4baa96e2be2d4885201d9ee260a737b378c2649d52",
         intel: "dcbbe3f9a9feda6bd176b8494c22062defd947871b0739fe2873c3b2056d32e5"

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
