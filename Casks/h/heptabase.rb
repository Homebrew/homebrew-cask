cask "heptabase" do
  arch arm: "-arm64"

  version "1.17.2"
  sha256 arm:   "a7b585fb070b88302cb0ca17ae98b3df5e8776c06d1f9e25078405bc77bfa938",
         intel: "41ba6ea8d6039b3dd1ff31cbb3b3b47efead271664f85ef398df96fa1a3403eb"

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
