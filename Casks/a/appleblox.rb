cask "appleblox" do
  version "0.8.6"
  sha256 "a80ad62631614102e9bf3934dc6bc8c73a54f7123eb07fd1628e7143e7ea377b"

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
