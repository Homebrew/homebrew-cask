cask "heptabase" do
  arch arm: "-arm64"

  version "1.32.10"
  sha256 arm:   "b938cb03c970afeabfbda7a76ccff4dd30d8baaf5067026add787d0076b1ac8b",
         intel: "33188cb215cc9079ec6e839b62945bec21ea48e901af359230d955261cc4264a"

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
