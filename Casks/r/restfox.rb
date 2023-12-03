cask "restfox" do
  version "0.3.0"
  sha256 "b9f0c93e1bb739afa91495f15b3bf2973c4bdc71fab94ce899d5341c700e24ec"

  url "https://github.com/flawiddsouza/Restfox/releases/download/v#{version}/Restfox-darwin-x64-#{version}.zip",
      verified: "github.com/flawiddsouza/Restfox/releases/download/"
  name "Restfox"
  desc "Offline-first web HTTP client"
  homepage "https://restfox.dev/"

  auto_updates true

  app "Restfox.app"

  zap trash: "~/Library/Application Support/Restfox"
end
