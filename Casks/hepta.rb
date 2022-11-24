cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.225.0"
  sha256 arm:   "b3d5a69a8c2833baaffd0fa2335311f22442ae1f97534f9a82a625c8fe84157e",
         intel: "12618bc6ef50d7b5681ead2af564ee04f3de6ddc6f433928a86bab60b366ec09"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Hepta-#{version}-#{arch}.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Hepta.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
