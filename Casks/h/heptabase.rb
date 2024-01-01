cask "heptabase" do
  arch arm: "-arm64"

  version "1.18.3"
  sha256 arm:   "541785a711da31b27d183c1c963528957adcc55fb096620d02c165dd78f766fd",
         intel: "d9ca45fdd3e05d925c83a59ea0b9e35931c868b80ed13c46e5f29a0562694125"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
