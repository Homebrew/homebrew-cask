cask "heptabase" do
  arch arm: "-arm64"

  version "1.29.2"
  sha256 arm:   "deab80743e6ca53e8b0e4025318dbf2f8703259896a28f087cb3ad5983fdbf66",
         intel: "fcfc3f0174de9fc64ab748084c3a6575fc567075dd335b07999767235ecc7edf"

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
