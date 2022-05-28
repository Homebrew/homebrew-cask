cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.145.0"

  if Hardware::CPU.intel?
    sha256 "456b7d8ac480df881c7165ee748df6d85e7bbafae063138d1b5f7b72ff032e9e"
  else
    sha256 "d6f9420a9db50d9241bfe524199355d2548ac3a137a8092c3114a8c02bb64b2a"
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
