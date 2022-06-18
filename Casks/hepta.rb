cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.157.0"

  if Hardware::CPU.intel?
    sha256 "4ca273d2d19432a71e6456773569a2e6872e91079da01fd0302714f2f46defb2"
  else
    sha256 "f544790db5cc3da09fb614d018644363826f9ce96064e646de60ccce2d6ad1fd"
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
