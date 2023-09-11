cask "heptabase" do
  arch arm: "-arm64"

  version "1.4.0"
  sha256 arm:   "d8b282db31cb2d9bf971c31f4b9287ded2807a0977b9ddffce02f7f073aadd0e",
         intel: "f22a29c4db27fe60edd9b431640b4e328f306c686153ecf9ee54c85974509b1b"

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
