cask "heptabase" do
  arch arm: "-arm64"

  version "1.85.1"
  sha256 arm:   "0d7e2c28457ba71c02d0062cb23c9fb80a6465dd718a0d71c077d8d638174333",
         intel: "fc7f82c3a367eeae13ae805e07d9cab1630673cbe29ed5b183b16d8f0104fed2"

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
