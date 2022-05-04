cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.134.3"

  if Hardware::CPU.intel?
    sha256 "b3d068917a39bdda6b2fd188cde423ee034dd82f59e0ea14160d89978e111c9e"
  else
    sha256 "766e05e63027d079d282e0997a54a5bebe09fbed631068333dc76f1e5d063b7a"
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
