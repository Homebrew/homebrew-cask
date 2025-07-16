cask "heptabase" do
  arch arm: "-arm64"

  version "1.64.0"
  sha256 arm:   "21cdb9ae2aa42e83605db1a6417f4c59bd27004e6e290322600e8c6f61851e00",
         intel: "edc944bba3284acce9cb3f0acd9a2160b70d3c2b2f000d572d9b660e1f56d3c5"

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
  depends_on macos: ">= :high_sierra"

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
