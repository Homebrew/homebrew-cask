cask "heptabase" do
  arch arm: "-arm64"

  version "1.52.1"
  sha256 arm:   "30da48d274b340cd334438e8b0ccf2ca9b86d45d708e53287a0df0397cfa7a39",
         intel: "cdff43379474cdcc6e4710b1f6e91daa67b368d1f0ff33828b7e9e857cc76fee"

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
