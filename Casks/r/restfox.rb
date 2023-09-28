cask "restfox" do
  version "0.1.0"
  sha256 "6ebf72f80c4403f2d5f33112ee4b0e3ede4e273801e73ed5e2e8cc13d2ffa6bc"

  url "https://github.com/flawiddsouza/Restfox/releases/download/v#{version}/Restfox-darwin-x64-#{version}.zip",
      verified: "github.com/flawiddsouza/Restfox/releases/download/"
  name "Restfox"
  desc "Offline-first web HTTP client"
  homepage "https://restfox.dev/"

  auto_updates true

  app "Restfox.app"

  zap trash: "~/Library/Application Support/Restfox"
end
