cask "heptabase" do
  arch arm: "-arm64"

  version "1.57.0"
  sha256 arm:   "456673315a9d3055263fb44cee4fa760a092cf70d027b22b341ebff705dcefff",
         intel: "6d8e930c3317cabc556b95896ebe67d6755270c69cf0073bfcb4fa922f0a0113"

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
