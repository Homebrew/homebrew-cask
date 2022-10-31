cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.217.0"
  sha256 arm:   "956618b06369e995b836bfcb76b47b8ac7c6fb030334a3455d06da8a4b63b770",
         intel: "0d355a9cc85c8d7c646c3d58635fd2456f17047514a25d0ee30af4c95aebfe00"

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
