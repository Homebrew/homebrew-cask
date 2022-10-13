cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.206.0"
  sha256 arm:   "79a195be9c7daec6a4db38f6926aee02f5f1f82ac024e07fa6ca26225c60a941",
         intel: "f1a427677273a72e2d4a55098eb13ce303cbc8c3719c1e2f186b37cf3f463f34"

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
