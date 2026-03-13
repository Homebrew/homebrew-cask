cask "heptabase" do
  arch arm: "-arm64"

  version "1.86.0"
  sha256 arm:   "6af51025b08a153716fad318004db6a6ea2926520a2d1119111484e60358bf1b",
         intel: "13201785c4b246835f6de76bc52e5c8fea03aad11dad0f0fe65b3f46607cadb6"

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
