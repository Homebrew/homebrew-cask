cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.301.1"
  sha256 arm:   "8f75a528fd8e3ae4d17af1742679b235a79d9be1358f805589663f4a864db75a",
         intel: "d5f7452db765e316e45fd7fd3a05282f29a2ebf04b6a076c4a80cb09074b8b71"

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
