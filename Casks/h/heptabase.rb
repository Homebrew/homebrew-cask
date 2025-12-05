cask "heptabase" do
  arch arm: "-arm64"

  version "1.81.0"
  sha256 arm:   "161a7becfa180cb512c04b38a3f066b19efc01f4675fab311ea1ba736937c338",
         intel: "d8507ab5b8e638fec8ff4cbccd1075ae33327956235da548ec7d4d3904da5bfd"

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
