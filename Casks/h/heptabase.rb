cask "heptabase" do
  arch arm: "-arm64"

  version "1.5.0"
  sha256 arm:   "ccac928e40c5e2fe245d683197010ece9e7821f4fcb4d6ba4b0542ac075485cf",
         intel: "e4f150fe7d5f8229fca02f0bdb44d3b4336b829d02affe0cd653a2ecf913b957"

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
