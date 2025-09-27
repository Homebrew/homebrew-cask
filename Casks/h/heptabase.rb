cask "heptabase" do
  arch arm: "-arm64"

  version "1.74.1"
  sha256 arm:   "8b62a9402843642f42c1edb803eedd994268915fefbbba618787166b6a06e0cb",
         intel: "9602a13e73a60906988f34739ad24508051b745a31fb72e958fc3fb8540f4466"

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
