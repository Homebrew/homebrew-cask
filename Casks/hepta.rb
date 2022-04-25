cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.130.0"

  if Hardware::CPU.intel?
    sha256 "df9651b37712ae98b01a01e5fb1a037addfd5b561c24f8b153862595c36a6fec"
  else
    sha256 "8517880c2932c7760c9356ae871f905977cea1cac8578af9377f221fd3c0f2b4"
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
