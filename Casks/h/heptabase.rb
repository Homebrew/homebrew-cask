cask "heptabase" do
  arch arm: "-arm64"

  version "1.78.2"
  sha256 arm:   "ce844d08437b1b7d02cb0035db32671a7eb00bafae9b769ea28e1b3571988661",
         intel: "0f2078425e91e5faecce093d58de3e7f01cb4f82f0e4826dfdefcd1a5cc45a4d"

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
