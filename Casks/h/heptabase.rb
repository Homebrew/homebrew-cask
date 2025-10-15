cask "heptabase" do
  arch arm: "-arm64"

  version "1.75.5"
  sha256 arm:   "d47fb03c5ca3165fd9449a67695d20dd2637e8b21bec5a05aabb9e04eb0f94e4",
         intel: "8ec837997f5088fb60e86ddb2a65360fba677342394dc5fea249bd32c9e04a8f"

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
  depends_on macos: ">= :big_sur"

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
