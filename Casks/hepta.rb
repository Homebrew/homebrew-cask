cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.324.2"
  sha256 arm:   "2dd97e622b0126b964ffa97d10e43f30d8b81b68a11468e8600bb1ff89f8da5b",
         intel: "002c5b2fdcc01d33597dd6a6dd3a5bfd883b228a8a35fcf57938f34e4f20b611"

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
