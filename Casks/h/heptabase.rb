cask "heptabase" do
  arch arm: "-arm64"

  version "1.73.3"
  sha256 arm:   "abd4cfe1ea1eb864aa697ddf6d525d5c68013bb20f44d88d2e434f6202c8b60e",
         intel: "f4cb20a115f8e8d99ba5d77703f9eb501275166db4f2756af25b1debbc4b35c1"

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
