cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.213.0"
  sha256 arm:   "f9126e3feedec3dad55fa145d6ababd1c4f9c33aa960cf06812ececec6f73f5c",
         intel: "96e9296cf51704fe68500c84375303e0b942fc486c85641aad2879a84ae3ec6b"

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
