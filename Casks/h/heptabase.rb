cask "heptabase" do
  arch arm: "-arm64"

  version "1.90.7"
  sha256 arm:   "0ce6e1238e0b355555079fb168919901f47c6304d504dedca70d08de191cfd4b",
         intel: "d959304e4d7224a8ab0f216c3afa8fe7a541b55e2a276395c0214759134dd836"

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
