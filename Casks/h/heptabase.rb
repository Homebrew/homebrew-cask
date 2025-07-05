cask "heptabase" do
  arch arm: "-arm64"

  version "1.60.1"
  sha256 arm:   "075ba0bbc5155626d34ad3a1b502bcee9ea45223aa0cdf4e1182ea6d4dc9fd75",
         intel: "30ba78c90bf049d4e405840901a8b346b2124096dd95b6cf211c4e7e4178fe24"

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
