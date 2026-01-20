cask "heptabase" do
  arch arm: "-arm64"

  version "1.83.3"
  sha256 arm:   "c819a52b8621ebdda8feb4f49c34db9a2ae9e04bc99e86a7a3e610ae25d9c0b8",
         intel: "cfb5723e1665cd820727ba44170fdc6fc63441068ee91ef843c3c83520ea22bf"

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
