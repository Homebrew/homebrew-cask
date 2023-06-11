cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.323.2"
  sha256 arm:   "b26e1dd64cf35e2dba2ffb993122cc9beebeaf222bb22108fe22bc7d0115eaa3",
         intel: "b0304501aa82e43adbd276887f8d359a61f292de1a3a6ec4bd5fd214dcdb93b3"

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
