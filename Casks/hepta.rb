cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.291.2"
  sha256 arm:   "97372f78ed653c4643459d84be9f4e32adfd64db02fe8d994f1c61e0e31cc72b",
         intel: "7832d4a5585ab990fab0ad5e620fa4eeb336251b32dee83df6dfb15f7e99181f"

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
