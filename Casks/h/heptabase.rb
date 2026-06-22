cask "heptabase" do
  arch arm: "-arm64"

  version "1.98.2"
  sha256 arm:   "5a3d0a2e3798d8b32d9f0b3581344a3e12e635348a2becd2ae51f360fb23bdd7",
         intel: "f9230627f406bd515e09867c2c23bc63b11158945e7363eca3d8811ade7536bb"

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
  depends_on macos: :big_sur

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
