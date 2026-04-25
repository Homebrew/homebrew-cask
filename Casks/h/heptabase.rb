cask "heptabase" do
  arch arm: "-arm64"

  version "1.91.2"
  sha256 arm:   "e6d9fe9197f47b70e7b5c8c95aceab2504ada552bf7d0defcd636a5060a88054",
         intel: "e2dc9691ebe35b7646134f59e40cfe5e3dc93f17dbdb68916086c34e7770735c"

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
