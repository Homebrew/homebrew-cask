cask "heptabase" do
  arch arm: "-arm64"

  version "1.37.0"
  sha256 arm:   "37d65fe2d7fb45ba960ad8ace3c49fb0e939d33c8adcf0dd58e79cefc3cd3a76",
         intel: "8510fd4dcd3731f2386125a41eecce0362882f170456789ff639654b1ba116ee"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
