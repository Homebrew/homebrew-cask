cask "restfox" do
  version "0.0.7"
  sha256 "3bfc287257e34afc9fbe32f8b41cb1d4cbeefb0d70f4f8c39d094a5e803d3f34"

  url "https://github.com/flawiddsouza/Restfox/releases/download/v#{version}/Restfox-darwin-x64-#{version}.zip",
      verified: "github.com/flawiddsouza/Restfox/releases/download/"
  name "Restfox"
  desc "Offline-first web HTTP client"
  homepage "https://restfox.dev/"

  auto_updates true

  app "Restfox.app"

  zap trash: "~/Library/Application Support/Restfox"
end
