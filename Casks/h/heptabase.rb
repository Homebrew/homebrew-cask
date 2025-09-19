cask "heptabase" do
  arch arm: "-arm64"

  version "1.73.4"
  sha256 arm:   "1d8249d4fa27851b13b968fd60505f4edcba5c612f09779ec9a006e152ffd2a2",
         intel: "60c291cbf9d88538bed6e7fde6ac1c2f87ba86d7b1fda54931f7cfed70f0f9f6"

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
