cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.224.0"
  sha256 arm:   "3e74e2eef7e105ee7a6ed4d04da998feb2bc6eff3737d60f0a0e0cc0c9493ef7",
         intel: "347c489d93a91b418cb40c87e61c86f575af48829d48077e89978e1311ccb618"

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
