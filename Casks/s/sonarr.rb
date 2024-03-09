cask "sonarr" do
  arch arm: "arm64", intel: "x64"

  version "4.0.2.1183"
  sha256 arm:   "9808f3fac1c15739161d755d7cc5c4bc9a41f2cd6d47519db30aa5a9f3100d82",
         intel: "0e83249a17616f809fd651a1f1ae1106a568625a4cc52f3bf82f82ef13d0553a"

  url "https://github.com/Sonarr/Sonarr/releases/download/v#{version}/Sonarr.main.#{version}.osx-#{arch}-app.zip",
      verified: "github.com/Sonarr/Sonarr/"
  name "Sonarr"
  desc "PVR for Usenet and BitTorrent users"
  homepage "https://sonarr.tv/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Sonarr.app"

  zap trash: "~/.config/Sonarr"
end
