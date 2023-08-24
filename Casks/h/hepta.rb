cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.369.1"
  sha256 arm:   "c37c7ef8c3428b43e9930b62d4ad5d3f6a75f1f73853d0a754f166e769f2913a",
         intel: "09a61a27fc837f58ee99eb9faf89f7531ad10ae8a34fc28260e5a3a623b34f8c"

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
