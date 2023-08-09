cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.360.0"
  sha256 arm:   "2824c63a7c0841242b2eecd2b52396037b97bc158816587dd3d221cb498908d1",
         intel: "a71c47818f0636553930d966e39285d805101f37c92e63adce9fbbf32f3813e7"

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
