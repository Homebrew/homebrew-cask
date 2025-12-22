cask "heptabase" do
  arch arm: "-arm64"

  version "1.81.5"
  sha256 arm:   "9a39ff99e0f4d46a3e210701c206a97606d9a1ae8bc0bce6fe0306f77600742d",
         intel: "20203f162da791fcb89fb7aad741d2ef8274a8c8f54600e009ca65efc475f2a1"

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
