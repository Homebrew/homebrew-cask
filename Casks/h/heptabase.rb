cask "heptabase" do
  arch arm: "-arm64"

  version "1.61.0"
  sha256 arm:   "f9aaad1d35b731bdee50d9d33db9293060bf2de58fbabe94aff5cd3869fa2ab0",
         intel: "57405816ce520e890f399058d70d5d8855da1f1281820c9a5de3322cd540ff91"

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
