cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.188.2"
  sha256 arm:   "626181026d3e57002eedd8a7500ecdf19b1eab9ad422dd69ae39f761078575d2",
         intel: "7f0da05f01a3da8b346ff161484b1c701a94ee8cf1813415734a81f66ec2d017"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Hepta-#{version}-#{arch}.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url "https://github.com/heptameta/project-meta/releases"
    strategy :github_latest
  end

  app "Hepta.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
