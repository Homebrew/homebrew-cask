cask "advancedrestclient" do
  version "17.0.8"
  sha256 "4071fd884604b303102017b80a264e21d6cadc768952b6ae8c6ab6527f19799b"

  url "https://github.com/advanced-rest-client/arc-electron/releases/download/v#{version}/arc-macos.dmg"
  name "Advanced REST Client"
  desc "API testing tool"
  homepage "https://github.com/advanced-rest-client/arc-electron"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "AdvancedRestClient.app"

  zap trash: [
    "~/Library/Application Support/advanced-rest-client",
    "~/Library/Logs/AdvancedRestClient",
  ]
end
