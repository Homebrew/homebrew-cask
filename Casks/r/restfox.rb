cask "restfox" do
  version "0.2.1"
  sha256 "83d1b2b7ac7eec09b1bb05ceca7d7ab5d056ea83b8dfe90f9218199e09c5ca5c"

  url "https://github.com/flawiddsouza/Restfox/releases/download/v#{version}/Restfox-darwin-x64-#{version}.zip",
      verified: "github.com/flawiddsouza/Restfox/releases/download/"
  name "Restfox"
  desc "Offline-first web HTTP client"
  homepage "https://restfox.dev/"

  auto_updates true

  app "Restfox.app"

  zap trash: "~/Library/Application Support/Restfox"
end
