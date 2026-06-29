cask "heptabase" do
  arch arm: "-arm64"

  version "1.98.4"
  sha256 arm:   "b69d589f05747330df75c6cba57645b174cc31a6a9f54fba62c5593a56458655",
         intel: "356ae80279d95aadc936ce01381455f1fed2ad28c55a1709fff2ad73171ba18a"

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
  depends_on macos: :big_sur

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
