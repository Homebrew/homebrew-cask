cask "appleblox" do
  version "0.8.6"
  sha256 "d66bbf82752dd323ad542902f1f5315d82a3eac7d33cd5076d1ad988e0a61046"

  url "https://github.com/AppleBlox/appleblox/releases/download/#{version}/AppleBlox-#{version}_universal.dmg",
    verified: "github.com/AppleBlox/appleblox/"
  name "AppleBlox"
  desc "AppleBlox is a Roblox launcher for macOS, inspired by Bloxstrap. It includes features such as DiscordRPC and Fast-flags, with ongoing development for additional functionality."
  homepage "https://appleblox.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "AppleBlox.app"

  zap trash: [
  "~/Library/Application Support/AppleBlox"
  ]
end
