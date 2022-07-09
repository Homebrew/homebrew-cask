cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.169.0"

  if Hardware::CPU.intel?
    sha256 "d66a1fc7fc10b7884fdb7a3d0e6d2d3c2b93711d455fd6e1c522d8e00d90d5c2"
  else
    sha256 "8637f5e7f42decf5686aad762d4fd315a817a118162f6ad1b1c6d21840fd3787"
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
