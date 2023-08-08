cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.358.0"
  sha256 arm:   "02fd6b2747b4cb8b144e0dcd8a16b090c165c3dbb1e2ae37f6ca6865436a62bf",
         intel: "9bcd9efc9d3e09ac9e128bf4f1e1ec5aa685014a95b9377caa35ba4ddf8cc9d5"

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
