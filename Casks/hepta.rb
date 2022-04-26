cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.131.0"

  if Hardware::CPU.intel?
    sha256 "0a00e13bf989ce61ebe394764db81e68f01cfc61428e6c3fc7ed008699c52330"
  else
    sha256 "ffa0e012dcd3da1668a62d431fa6a59f6cd0cf7af190d1ceedc57366bf760a16"
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
