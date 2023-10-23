cask "heptabase" do
  arch arm: "-arm64"

  version "1.12.2"
  sha256 arm:   "a46919e97abe4aa5b05fcb10506f088fe2cc9ff902f5f5f8344f936c824a0bd3",
         intel: "9a6d118fd5023894051ad671f81877c9dd3f0dbdda26a8eb55e40d442241b35e"

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
