cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.346.1"
  sha256 arm:   "beae0e0a661699ad63d662d159e53878f184271a5d57802298e0b0152c3b90ab",
         intel: "d4ce1b2b40a1ce6c77e1d8fe486e812b89688febd52aff8128494b3581c30033"

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
