cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.282.2"
  sha256 arm:   "ea51c9f52ba4c5c84add1bb5f4521ab33dec67506db867826fa181db188a7470",
         intel: "4ea26614accc12fd27868cc7ca3ecf8df4893cf5f2e73849a36bb531a348865c"

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
