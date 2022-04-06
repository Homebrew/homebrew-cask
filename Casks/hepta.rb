cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.121.2"

  if Hardware::CPU.intel?
    sha256 "e853cf64b8cda229f5abd77f62867b45064634463179f4dc72579a5f646f3a0b"
  else
    sha256 "7f3c27e2dd3512cafd39b6cb3e8fa82b8379ff96da1c97b2365f2c06b832dd66"
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
