cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.185.2"

  on_intel do
    sha256 "fa7b5e300e255a077bffce05a29d91ebb5ad4e16f46940a80e0259d7ba904605"
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
