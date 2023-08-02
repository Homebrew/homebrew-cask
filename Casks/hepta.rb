cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.356.0"
  sha256 arm:   "1f987b271b34b9275109ecfd04c5e4b063234626a42f91d7603dd7a0403336f4",
         intel: "5bb81bf01a811026d75862dbf46945cfc66d91251127976b6d183035be4c40f9"

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
