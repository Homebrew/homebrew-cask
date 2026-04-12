cask "heptabase" do
  arch arm: "-arm64"

  version "1.90.2"
  sha256 arm:   "18e3ef3caa301b8988045b2ff1c8a0f7350374aea5ead9219de92843c2597925",
         intel: "93e240b0a21762aca0208a40452fb99d212cfe2d577ef9e183a6aefc0d0af063"

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
