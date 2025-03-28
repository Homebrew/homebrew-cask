cask "heptabase" do
  arch arm: "-arm64"

  version "1.54.0"
  sha256 arm:   "7f43f636af1a8f4eb06a80702aa209aa3aad310d46d01489882e02cef296b32b",
         intel: "e4fbe06cd62e979c360f3a9250fb23e2458d7cf79ddba8add79bbcc28a21c102"

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
