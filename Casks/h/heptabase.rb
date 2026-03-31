cask "heptabase" do
  arch arm: "-arm64"

  version "1.88.0"
  sha256 arm:   "ed5f181bf2843d45d5a46d0fdffb595b360d6c3cae14ae70da2a98fbb50af7c1",
         intel: "31da7d8d6998d46eebb904e02837caf32985ce2dbe33e8ed6e33467b2bf282c0"

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
