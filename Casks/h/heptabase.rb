cask "heptabase" do
  arch arm: "-arm64"

  version "1.10.0"
  sha256 arm:   "9d776368332657a1f8c976616da845007f76cc685ecd01dfc24703b89d834cb4",
         intel: "01292a9d98f06f1036a8a9571a7658668613e0569bae3135db0cf308921702a6"

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
