cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.105.0"

  if Hardware::CPU.intel?
    sha256 "3a7fbadaf2c34545a94e7487a312b65f1a37d6540ba50edaa468ee64d9ebbc3d"
  else
    sha256 "99bdd5816ef7b17ace6887d517862debf23770f9e8edb8b96ff41085a108940b"
  end

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Hepta-#{version}-#{arch}.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  app "Hepta.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
