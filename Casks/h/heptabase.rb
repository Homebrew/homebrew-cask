cask "heptabase" do
  arch arm: "-arm64"

  version "1.53.5"
  sha256 arm:   "55dd23d19bbe5335a6dd9b874b60e171477230ff4462d75ce22d837b6c4baa2b",
         intel: "516fa3b902dbc2cd83e0c8ffe101dcb6132f99c31696fc5343aba23867acd778"

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
