cask "heptabase" do
  arch arm: "-arm64"

  version "1.66.0"
  sha256 arm:   "b9d8c5696906c01a996a8aaa08b91c70025f19c401f176db3de0e55fd1ad4000",
         intel: "37bdb2305af6f688d3b6000fb369e61103743226abf4486896139f56cfcfa67e"

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
