cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.309.0"
  sha256 arm:   "62132c463204e6ca4f902764c8ae7b46b97259b824077ffb2cc31bfe94c730bd",
         intel: "f03d0ace1ec488944742b61c062ed3e951eb3e255794b620a5c0f30cc8a8116d"

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
