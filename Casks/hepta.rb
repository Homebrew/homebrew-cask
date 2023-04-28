cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.300.0"
  sha256 arm:   "9291e34a205d8e0c8544fefdc9dbf344a26e7bd30b9c34fb72f6b1a2eba6003d",
         intel: "bba0f25509168371af6589f3d9895d353302b42375303bd080f2ae955487a11c"

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
