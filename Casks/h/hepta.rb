cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.371.0"
  sha256 arm:   "c12e4c68c8f0a60b14eac0cbe482965058f45890efdd2fb05380f88f3aba0566",
         intel: "dca2310654419d021320d0575f99ff79c3a2986059c0d2da5b5e6066d7ce668b"

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
