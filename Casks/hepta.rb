cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.161.0"

  if Hardware::CPU.intel?
    sha256 "91d0be1d64680a422dd1c2eb6a6ee015b824ed99abe99dff135c6cddedd1aca8"
  else
    sha256 "f5d1fe8e4ccdcbdb24f4d4d58ae35081c4cc68a2c16879fa5a615c17cc4c1921"
  end

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Hepta-#{version}-#{arch}.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  app "Hepta.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
