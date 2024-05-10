cask "heptabase" do
  arch arm: "-arm64"

  version "1.32.7"
  sha256 arm:   "a9f572fc93e8fe9d4bc52ad6eeb7f656b489f9e58d94c981aeecc312d137ad39",
         intel: "bd6b344739bd1d7bf46ad0ed422a9f6e41e20f0ddc4da670f422128ec30a74a8"

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
