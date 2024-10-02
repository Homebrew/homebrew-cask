cask "heptabase" do
  arch arm: "-arm64"

  version "1.41.0"
  sha256 arm:   "50794e06ebd6e4014bfb541638c5f7f17dbafeab0b90c5c1313b10019c955faf",
         intel: "b864c9f57bc276123a2243803aa27e0d4809abe22994589c06d6f9de3a130d90"

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
