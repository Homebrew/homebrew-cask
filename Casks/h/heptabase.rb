cask "heptabase" do
  arch arm: "-arm64"

  version "1.38.0"
  sha256 arm:   "508c87cbd10dbc99b4ce8abb5ea3ca6af9c7b498a45e244374fbb9c12479ea36",
         intel: "128cd6745f1a15637bdefdce86e5e11316b951bce94c02c395b99e55c578dd1a"

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
