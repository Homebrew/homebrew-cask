cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.194.1"
  sha256 arm:   "be9963f9a778b6faedfad72c7149f5b5b952903d31371cba51bb18e55c8ca964",
         intel: "9a1fb7a299c9552b041ed9e23c5c221fa4f0a1df03c9bdb0417663ad90f8ecb0"

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
