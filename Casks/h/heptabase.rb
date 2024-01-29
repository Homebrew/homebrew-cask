cask "heptabase" do
  arch arm: "-arm64"

  version "1.23.2"
  sha256 arm:   "2e11a5723e3f22069250632eb6394597edd9a6fdd19010464ac85a5c4eef1e63",
         intel: "f9fc69e98259974ce4850c0053029028f6e741075d1cb7b645b55a5dba5b818e"

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
