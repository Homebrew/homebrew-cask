cask "restfox" do
  arch intel: "osx64"

  version "0.0.6"
  sha256 :no_check

  url "https://github.com/flawiddsouza/Restfox/releases/download/v#{version}/Restfox-darwin-x64-#{version}.zip",
      verified: "github.com/flawiddsouza/Restfox/releases/download/"
  name "Restfox"
  desc " Offline-first web HTTP client"
  homepage "https://restfox.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Restfox.app"
end
