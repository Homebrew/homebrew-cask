cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.211.0"
  sha256 arm:   "2f756bf1fa862f4392ca080638a37c6aea958ee073cf4c7947697c2ed95f18fc",
         intel: "1c2448474f8145cc2cfd846cf195a4d6f8df0fc313ed092056eb814da8cf9df2"

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
