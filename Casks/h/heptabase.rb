cask "heptabase" do
  arch arm: "-arm64"

  version "1.69.0"
  sha256 arm:   "12c978882badb68641341befd5a12b748a8b20e77e8d8e095a1c842a7f90689e",
         intel: "5e25c472ca6b981d08c9b468dbde6a8444b65b7148587b3ef2e7f3ba9f19fbae"

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
