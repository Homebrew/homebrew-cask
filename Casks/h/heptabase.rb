cask "heptabase" do
  arch arm: "-arm64"

  version "1.82.7"
  sha256 arm:   "621cd550fed7b55c3c7052e0fff69c0c8513ce036234fac310142061072cde69",
         intel: "ce05f4601007eccb7143a3360ad801bea260fa6e6770f2f876a787290a7b0bcf"

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
