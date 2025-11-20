cask "heptabase" do
  arch arm: "-arm64"

  version "1.78.10"
  sha256 arm:   "7790658df916a90ffa21d78bd0b6b799994329b0d41342b3aec0ea640857beef",
         intel: "22d75214c307c4f8353edc9c7dc2bf7a0e4619e2cb269962b6c46492aec4210f"

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
