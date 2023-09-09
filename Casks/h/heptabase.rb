cask "heptabase" do
  arch arm: "-arm64"

  version "1.3.2"
  sha256 arm:   "8e1a01df1dfb3c9ee642d0d9839ba45b8915dc4b6129774116b0d5ef4f1c1403",
         intel: "a178ba3b880d09c521ac39ed3c3815e96099b65cd28618d1c960b25457999be5"

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
