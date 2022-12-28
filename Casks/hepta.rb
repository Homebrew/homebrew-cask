cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.244.1"
  sha256 arm:   "c44d3c9783cddb173dd76141a99b0697d82033e2cfb815beb147d7e36767718c",
         intel: "92e6b511c5bd9257109d4356e077431d5243ece28f5bfd44ee56d22f5ac25c06"

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
