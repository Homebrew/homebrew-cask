cask "heptabase" do
  arch arm: "-arm64"

  version "1.88.1"
  sha256 arm:   "0cd45b12ae1774018c96fdf66c202149367e0d7a400e02e258ab8ed5cfc2a241",
         intel: "e624b42f23a875794342f067ff54b70e1359d2fe6bbb7f1669290e32fbd066e8"

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
