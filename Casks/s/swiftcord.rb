cask "swiftcord" do
  version "1.7.1,71"
  sha256 "a04d3c2204ffe61b1f94457ebb93c00d484e67a09c29eab5405148372e7ba3e9"

  url "https://cdn.swiftcord.app/Swiftcord-#{version.csv.second}.dmg"
  name "Swiftcord"
  desc "Native Discord client"
  homepage "https://swiftcord.app/"

  livecheck do
    url "https://cdn.swiftcord.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Swiftcord.app"

  zap trash: [
    "~/Library/Application Scripts/app.swiftcord",
    "~/Library/Caches/app.swiftcord",
    "~/Library/Containers/app.swiftcord",
    "~/Library/Preferences/app.swiftcord.plist",
  ]
end
