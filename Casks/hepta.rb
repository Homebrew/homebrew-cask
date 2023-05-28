cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.314.1"
  sha256 arm:   "40f0da1fb83515b6fd0658be264dd30df2e894eb79474ed0bb0d1e6f534a885c",
         intel: "9c3a1e1bf1fe8f0c1b81f3627978306a1316d4ec35440ff07faa4e17f1058067"

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
