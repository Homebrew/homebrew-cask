cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.290.0"
  sha256 arm:   "5f710fd5ccd03722417612c095a241d4b9c14a281c4b9a154721bc7d531dd094",
         intel: "c486e6d99eeabdd3af303edce37e6a3af23c60221c8f827d1b99cbee3928bfb1"

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
