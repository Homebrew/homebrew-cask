cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.261.0"
  sha256 arm:   "b82e39c97ad82e806e99ba3298b3fa23bc9085304357688055ab163b8720374d",
         intel: "487297b68cbeef0ec575a9fa3df21959702bce76b05e093a952ac6feba02c051"

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
