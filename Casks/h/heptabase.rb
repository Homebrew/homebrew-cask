cask "heptabase" do
  arch arm: "-arm64"

  version "1.56.0"
  sha256 arm:   "c23e8657ea962f328a80a2580f2f68b330c61e3818305c404d0b3f203f252e78",
         intel: "9470e58763c3db9b25d12dacd6104714f389c0373166d059589fec886fb6cb7d"

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
