cask "heptabase" do
  arch arm: "-arm64"

  version "1.78.8"
  sha256 arm:   "06b14c1ea05c4e1bf4f61a4969fc070084205b39b3a3ea9b565eb91d6b6a8127",
         intel: "989638c8dd29406e62ce828e1e219b27259b25382fa2501d2a7cbbfe895ef39c"

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
