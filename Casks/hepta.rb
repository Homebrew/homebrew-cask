cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.303.1"
  sha256 arm:   "b74393a2f87885de751af4360a7d87a72163660862b48bd70c26b8f922f45a09",
         intel: "112bf020bfdc8fa0a221b020989534de1f3fc720b80a0c93911340e4eb1320f6"

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
