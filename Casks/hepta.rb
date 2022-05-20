cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.140.1"

  if Hardware::CPU.intel?
    sha256 "990e5a48fad678a71de84b312945f4566cef850b354869c66dea24ee4b4da63e"
  else
    sha256 "cb994eafa66141272f22539e9cafae9da759a1450b04da23d395912f37d63e7b"
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
