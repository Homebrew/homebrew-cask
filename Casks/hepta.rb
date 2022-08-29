cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.194.0"
  sha256 arm:   "82c9dc9aa697d51582e356f0d4cf2a161111be96cc46b8084f3b70677a7229e5",
         intel: "0b7d4022a522c028dc7160edd66d14f0c9462760a52a12e45a91b308120a78b0"

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
