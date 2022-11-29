cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.229.0"
  sha256 arm:   "29effb8a30e6b23d329fa1327e2a3e19f2e9f9e911f6e40f1938921dfa76d2cb",
         intel: "b25453c8aab49c76ff10216d2ff4ba089e8537458899e7108cfda704d0ed0c30"

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
