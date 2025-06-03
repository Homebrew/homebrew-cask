cask "heptabase" do
  arch arm: "-arm64"

  version "1.57.1"
  sha256 arm:   "478280b3752160cc421215f03e22edc50e5ce32460e0d00893861170a66f3e19",
         intel: "b2d9c141b42c7dcd9f4504329a27b30d0162cc4b0e91a5d5657c026481ca59e6"

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
