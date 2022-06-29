cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.163.1"

  if Hardware::CPU.intel?
    sha256 "58c2127ba61ed8da17b3b86456b9deccdc984143a8c056e4acb50d5584b95a64"
  else
    sha256 "a44478b7e9f1d135e51d6f67136ef543222e193dae23b252af1928aef446e3a4"
  end

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Hepta-#{version}-#{arch}.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url "https://github.com/heptameta/project-meta/releases"
    strategy :github_latest
  end

  app "Hepta.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
