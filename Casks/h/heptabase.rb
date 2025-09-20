cask "heptabase" do
  arch arm: "-arm64"

  version "1.73.5"
  sha256 arm:   "ad7ed1f3b43e50ffaf953c62f90cf5db6f85e70d3071bd6236e06145f93ef5c5",
         intel: "f334d0955116dd1e04b0efe9930589e713ba4a494fa0d129f854f49cfa64f7ea"

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

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
