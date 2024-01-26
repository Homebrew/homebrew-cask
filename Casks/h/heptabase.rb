cask "heptabase" do
  arch arm: "-arm64"

  version "1.23.0"
  sha256 arm:   "c6e5a0fabca9d415741011ccf054626d22b4e51bb14c0b37113ea7f6b0418dc8",
         intel: "773f8a7743d0016eb4e2dc1a4ad09466b85479cb9b78a3b4bec3cb1e433c451d"

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
