cask "heptabase" do
  arch arm: "-arm64"

  version "1.16.2"
  sha256 arm:   "9676167c38875d033d28a584f710aba2180672c70b241e1a185dc4a08baa5f9d",
         intel: "fb6a9ddf524e171ecc8e2e379d3359685a1b52a6e5c983029ce35ed8cc458777"

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
