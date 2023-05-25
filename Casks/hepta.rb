cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.312.0"
  sha256 arm:   "5e123efeace2f7754f841ff3aa7422753889a3dc54a20fc6723f258524f81516",
         intel: "d7e4dcc46886c25022eb179c7f591dfd51349fac7c0976763b9502a2aa29beb0"

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
