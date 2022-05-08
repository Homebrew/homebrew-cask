cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.138.1"

  if Hardware::CPU.intel?
    sha256 "60a04b630caccd58b2e6c75b1266523eb0b42167ec48d86184d77fe29f2cc42d"
  else
    sha256 "b8d05402ac389afb7e0a2d151bc62cd26451cbea87535fd7b16e7aaa234535fa"
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
