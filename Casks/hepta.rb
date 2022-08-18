cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.185.2"

  on_intel do
    sha256 "302ba70b1d8c65a43d28e36f011812831c480bd2e45eaf1bb4662b85af6e26cc"
  end
  on_arm do
    sha256 "00c0dea79789300e0e327b8f10b4502963431bd9be9c1ac21cdedbf4a24382f3"
  end

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Hepta-#{version}-#{arch}.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url "https://github.com/heptameta/project-meta/releases"
    strategy :github_latest
  end

  app "Hepta.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
