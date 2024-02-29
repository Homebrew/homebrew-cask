cask "heptabase" do
  arch arm: "-arm64"

  version "1.29.3"
  sha256 arm:   "ac4f734b3d1a9487a79ada5830317fc9ed59450c857e305387bf2fd04f5b2e83",
         intel: "5b8ad79aebaf0ec8aec75e9e597cdeba4f2ebad6c0b90bba48c00f8c270236a9"

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
