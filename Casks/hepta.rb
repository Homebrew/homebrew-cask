cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.154.0"

  if Hardware::CPU.intel?
    sha256 "0199bb53c1c0b13d5843a884d26764daecf9cdebc24e4271d814ff5cf965e69a"
  else
    sha256 "d4f5547ae036d238e669ad9290f89eeafa8e48d35138e4cf903bc6d3ca471fc7"
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
