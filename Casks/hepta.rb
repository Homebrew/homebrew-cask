cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.221.0"
  sha256 arm:   "407a37a41ff04a5313db83870938d6a5b94d9a3acb04e84f518591a21f63fcc1",
         intel: "b102a397b258c7d40d9b840e8b1636c52cdb7942a414a38355d299ca182f0713"

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
