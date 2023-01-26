cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.256.0"
  sha256 arm:   "248233e00961a4441e7c92e710ab68a18907413c764a908d501f595c2c871141",
         intel: "2aa657ee77bd4dc0debfe19fc7fc0be6f37cc9f0f5659a4b35894a1801522484"

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
