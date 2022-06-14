cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.155.0"

  if Hardware::CPU.intel?
    sha256 "f253a3c2366ca7e57b8561cefe3411a9a97fd0766b67f617c6485f6019872261"
  else
    sha256 "ed19dc71950cab40e794d444b80fce99aa157e1a633b6f8542b36af17027673e"
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
