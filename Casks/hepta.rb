cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.304.4"
  sha256 arm:   "f224bcb269d75c30a23a5b937f95c4d28ed3234235d54c635f6455a00737b3fb",
         intel: "a0c76f0138aba051019e2d39822314f33066aa800b55d2229c12da70bcb3c80b"

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
