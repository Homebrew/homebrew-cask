cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.185.1"

  on_intel do
    sha256 "fa7b5e300e255a077bffce05a29d91ebb5ad4e16f46940a80e0259d7ba904605"
  end
  on_arm do
    sha256 "60c426a03e9c32b44a9b289ccdefb6d30ad28c1f40930fdaac9fbfea28827c3e"
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
