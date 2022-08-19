cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.187.0"

  on_intel do
    sha256 "7473bab46f225806a56883645cabbe873c2469ebb3ed5e58e9b2b34f29911523"
  end
  on_arm do
    sha256 "04d6ea21eaad299702ebbf01d50869559f92a5caa422962588167651172617c6"
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
