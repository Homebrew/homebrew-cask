cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.152.0"

  if Hardware::CPU.intel?
    sha256 "0c533dfec740a87f6056eeb3f45edfc237120e93cc7dc498114dbb9a47304db0"
  else
    sha256 "a43466f823fd97000a10f2310e3e24979c26e3587feeab6e990533ac920551c8"
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
