cask "heptabase" do
  arch arm: "-arm64"

  version "1.90.1"
  sha256 arm:   "ffd0aedff0327aaf57a3cc726d657bf15657291568943ea99bd5427dc2f8e107",
         intel: "6b618c53a34b24b608f6f1915db623be84028b6e946c212258fbfa941ef610bb"

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
