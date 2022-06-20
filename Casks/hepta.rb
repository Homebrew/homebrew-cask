cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.160.0"

  if Hardware::CPU.intel?
    sha256 "48b8d3e5a2a904665348b8509fb3a625e12d9f8996f9c5a205371bfc40e6a8ec"
  else
    sha256 "9eb419961c39314e857efbd56d5f36d87bbbb5fcadcb686c2168ae44df2f9acc"
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
