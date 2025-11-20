cask "heptabase" do
  arch arm: "-arm64"

  version "1.78.11"
  sha256 arm:   "7bb6906b8e42dd4f4dbef2db26bae434339a2ab41badcb74c09acb4e0dea287f",
         intel: "e8963cc148f2effe962a61cbedea3aeae1d18bce96e97139fe490e789d1c086d"

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
