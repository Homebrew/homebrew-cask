cask "heptabase" do
  arch arm: "-arm64"

  version "1.93.1"
  sha256 arm:   "c0572b1929f9c1c4b2bc6516923dc29d469e7e964ebb9d57b29b94b37d29b8eb",
         intel: "e0de1a6d26c227f750e3cf3fa4b13f04b63041015655944d1e2cc37690a967ad"

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
