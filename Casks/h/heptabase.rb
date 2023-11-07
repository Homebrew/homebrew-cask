cask "heptabase" do
  arch arm: "-arm64"

  version "1.15.0"
  sha256 arm:   "9eba259fa2611504abdf6211c9345c3b16f2e0f6cb35a25d6f06ab54569330ed",
         intel: "48e438cecb6e4a648ecf47e933eaba54608170ac094c60ea7f29e719cbfcab01"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
