cask "heptabase" do
  arch arm: "-arm64"

  version "1.74.0"
  sha256 arm:   "bcc089b691883925a603aca9f137f81ec819bbdc29695bb26df49b4bcf0e73a5",
         intel: "b10c8e3321314a248b154a559238dfa8930521b02c7d138713249f69f0b103e8"

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
