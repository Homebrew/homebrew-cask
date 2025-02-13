cask "heptabase" do
  arch arm: "-arm64"

  version "1.52.3"
  sha256 arm:   "f94cdfc6fa7f616f51d73e7e9dddb436591af738496f4d4714fb52fab5871f99",
         intel: "a9ce22efac2936d869b21028766a12a22bbabdf11fb440aa9d3e0f014792bba4"

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
