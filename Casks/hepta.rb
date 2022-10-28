cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.216.0"
  sha256 arm:   "b7b847a82bb104efed83ac5f8a10b3915fc34b268c6e34c51e39b76026c6e357",
         intel: "61349414b40853913b2ad8a33e08086f4fc9d612d1311efcfa94aab5e93aaefa"

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
