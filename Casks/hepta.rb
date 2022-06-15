cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.156.0"

  if Hardware::CPU.intel?
    sha256 "891c9b4e1a35104db6b5fc22f39aa4e2a2c524bf48eb90ea268746f1a47bb9f1"
  else
    sha256 "7f4fc38e55b059b8e188e41aea1198184e51e985ba3003386295c0f124919b79"
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
