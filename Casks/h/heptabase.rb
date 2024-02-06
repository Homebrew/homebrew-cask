cask "heptabase" do
  arch arm: "-arm64"

  version "1.25.0"
  sha256 arm:   "3e0567a4c9b7691e009e3009ceb51e7e09e3eb0bd8901309d6abcf57162b6f56",
         intel: "c164b38bc031566cc287efe5695d998bdd40dbee273195e53cffe38b929ad928"

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
