cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.315.2"
  sha256 arm:   "14778712e666b19771e7e4452c8d5f3762a09c959c7e471f52f061fbfcce6d03",
         intel: "5dbd25bec10b4b031a4c61b4f594024e4573083e074456ff384992c5c6d0049a"

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
