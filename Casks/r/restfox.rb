cask "restfox" do
  version "0.4.0"
  sha256 "9432bfebc21969e2ba575b388519055f674c6e9180ff11c4bddb237358b195dd"

  url "https://github.com/flawiddsouza/Restfox/releases/download/v#{version}/Restfox-darwin-x64-#{version}.zip",
      verified: "github.com/flawiddsouza/Restfox/releases/download/"
  name "Restfox"
  desc "Offline-first web HTTP client"
  homepage "https://restfox.dev/"

  auto_updates true

  app "Restfox.app"

  zap trash: "~/Library/Application Support/Restfox"
end
