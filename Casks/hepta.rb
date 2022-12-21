cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.238.0"
  sha256 arm:   "3b7cdf98d411dc784fd54d640404dae733c107125028fe8e600e0103d2fb9553",
         intel: "c9f78ec8c1a6856d9844022064c58a61eeb36daf7a2bec48e7750ce1e357a367"

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
