cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.233.0"
  sha256 arm:   "f6c107a177c4a3cbb877036c88c94054d018458caf1ae90d372246adbb0dab93",
         intel: "421d214c9abf1a500b674c2267b49b26c1ad3be84f4930fd5fb5696267abaad3"

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
