cask "heptabase" do
  arch arm: "-arm64"

  version "1.31.7"
  sha256 arm:   "9d1fef245c3592a274659df6e4662d1ac390e9736d835d80603d92c8a3e2ab8a",
         intel: "9e37dce0b1497961b50e5587d40a561b25808103df1ad29c5c97e90c41bcc2cd"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
