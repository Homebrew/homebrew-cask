cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.271.1"
  sha256 arm:   "de4c06ee8ac865b5c6ba20418f92931762e4c9718d2a9cb915e41639429d4788",
         intel: "a8f4de84360850c5687e476cbde55f943ed19cd26bc66fa065381504a0591d2a"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Hepta-#{version}-#{arch}.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Hepta.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
