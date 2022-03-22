cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.110.0"

  if Hardware::CPU.intel?
    sha256 "6ea733fb756972fcd57deee2ed1f469770fabed841ad76e0b423e03d25fe56d7"
  else
    sha256 "2cd1952adc090af3b85dac02074ad890461387365804aaccf8060409738b0a67"
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
