cask "heptabase" do
  arch arm: "-arm64"

  version "1.81.4"
  sha256 arm:   "bc9fc3df0d38bdb99264b4aba096c9e9fa67effdd23542aaf1f730f24491fbd7",
         intel: "304f173cca9d6e16c82cd0dc1a27476ebb4a9b65fdaa9d34af423c6ab0303579"

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
