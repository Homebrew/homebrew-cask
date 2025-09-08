cask "heptabase" do
  arch arm: "-arm64"

  version "1.73.0"
  sha256 arm:   "50e99aa765fbfe1adef389d760e661ae9500a2df056624d003b98917cf779555",
         intel: "95b25b69d10ae7ddbe5e181da594833840ceb05cfb87b8775753c1c993d3406d"

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
