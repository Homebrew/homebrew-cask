cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.276.0"
  sha256 arm:   "eb5f5a6b60cc17bf742ce8e075951df968e12b1ad20c1ae4744d7dc1bc512dcc",
         intel: "4fabb1f2e9461389e752a484db3812632663337d95a2c65378148ede7ab9c6b9"

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
