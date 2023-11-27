cask "heptabase" do
  arch arm: "-arm64"

  version "1.17.0"
  sha256 arm:   "48d86551f26221f5d1275f72d7f047aaf616a1a91e0facb6fa6740c1bd01d018",
         intel: "2c4b663e3ca2c4a2cc14120a831ca7727e13c4ab97fc039b65a7de60e1c0c9ee"

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
