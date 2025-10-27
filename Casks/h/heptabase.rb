cask "heptabase" do
  arch arm: "-arm64"

  version "1.76.3"
  sha256 arm:   "5b041f0b4ed25c9f204024d75126fffa13e97d260045590e691d9cbd24eaab25",
         intel: "8d08d9ed90465e25c25ad2b0f9dd959a638b50bc06b180068ca9669ee0af8070"

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
  depends_on macos: ">= :big_sur"

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
