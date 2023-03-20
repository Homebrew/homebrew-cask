cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.280.0"
  sha256 arm:   "b3d6cde0bdceac6d8a0933164e5ad2d4b9a2f4869a8be32efbd17a87b8216b72",
         intel: "2c71fba2d2164c170bd723411bc59d1586b0e7a69f3eb426af05d18c99095230"

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
