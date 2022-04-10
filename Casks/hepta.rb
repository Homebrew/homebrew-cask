cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.122.0"

  if Hardware::CPU.intel?
    sha256 "ecdd8ef22ec017cfe8395314fb9692582a44da91d7735ff5c3e335f29e2e6f4d"
  else
    sha256 "50e2d373cb6455f19f55753e26ac7a633f80ccf0a26d5d1a750fa269001b8fe6"
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
