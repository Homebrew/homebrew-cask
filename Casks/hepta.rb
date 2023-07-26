cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.350.2"
  sha256 arm:   "27fee358ff00f49dd5a0abc3dcfd7afd9b142db629e16dd1410a2a255cff2815",
         intel: "f8b84849f8c286aa8876237075092a710b43f058a6e5636b2fb1df3d17ccf611"

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
