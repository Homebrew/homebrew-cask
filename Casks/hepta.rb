cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.274.1"
  sha256 arm:   "59337aa9e85ef71359369a80821d269ffc9b4a26dbb436aad4f732f56571e6ad",
         intel: "24726757740740aa824851e0ea1b596c098431e744b45d8f8e2d026815704501"

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
