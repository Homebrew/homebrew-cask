cask "heptabase" do
  arch arm: "-arm64"

  version "1.78.9"
  sha256 arm:   "cd9bc717ce4c776335bc6dd28431405353dfbe0f04ffdddd5c0c8f6d59b6b88b",
         intel: "dc2ea0d3cf1644b39d15c22a772d8c6721dc8adb4f034d180623c78823929a6f"

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
