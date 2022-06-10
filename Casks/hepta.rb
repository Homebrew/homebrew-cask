cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.149.0"

  if Hardware::CPU.intel?
    sha256 "ce2abfdd01d9850a1d0450c402d3cd61be06f373c2880bc79f375ae8a6660329"
  else
    sha256 "221b4b943622616d68fd21298e902a19b0df04bf3c66f2603b2936aa93a558d8"
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
