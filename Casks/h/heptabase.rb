cask "heptabase" do
  arch arm: "-arm64"

  version "1.78.1"
  sha256 arm:   "579b06f5b32030bced070b070312bc21c435f71c6932c8660bd42f14d283f2a3",
         intel: "a72640c314a9bc8d181736cec4f9c5a8b270ed4b7208e9b042848b170b201661"

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
