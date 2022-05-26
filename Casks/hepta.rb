cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.141.0"

  if Hardware::CPU.intel?
    sha256 "864bd5517de289e7ec866d826d5153e3c0814e1461bf103f7580965b260c88aa"
  else
    sha256 "b710831a518a3c9598c421184a5593aeddadbab04c6c9a97462217a17ed1a4ff"
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
