cask "heptabase" do
  arch arm: "-arm64"

  version "1.83.0"
  sha256 arm:   "010b62f9da3f854db75010416492cc5018fdc3de0de39d6df2d48c20f4d431d9",
         intel: "7d953f003b8bbe8fd1ce5e721c327b4ec80e53c3b1f58923ede9959d885eaba3"

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
  depends_on macos: ">= :big_sur"

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
