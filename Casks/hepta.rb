cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.190.0"
  sha256 arm:   "045f193d230c04c316185c9e506099a955ca7d91a11a6a3303b808e86f371fe3",
         intel: "0762214c9f376c0d1ba6f44cc05ee58712f44f7179552d37ce64ea6ee08c1707"

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
