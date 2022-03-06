cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.98.0"

  if Hardware::CPU.intel?
    sha256 "d046008612504e727176cf95267702945e290786b0acb1de4660af9848584417"
  else
    sha256 "10ef70c8dd84254b7b07b2b3200ac38ff22644a82f311bd1bb6d5ac3456c0a23"
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
