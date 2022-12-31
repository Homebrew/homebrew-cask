cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.245.0"
  sha256 arm:   "e9f7074128320e6ed5f74515a3ae17f02264db0eb3774236963eaa935772f1c2",
         intel: "9f4e934bd4226bfa5e0439792fd62fc7b2d0ac0bb3a62f29e6ad2e6944f199b0"

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
