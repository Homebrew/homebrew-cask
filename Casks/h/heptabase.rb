cask "heptabase" do
  arch arm: "-arm64"

  version "1.82.1"
  sha256 arm:   "9659e69762aaf71d69422e052427b28b14cc0a69132d2bac665526d3221ae4d8",
         intel: "31e1741be169110da0162b0806c93f88b79d0d155ea0470075ca6c83c5d67342"

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
