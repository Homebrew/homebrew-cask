cask "swiftcord" do
  version "1.8.6,87"
  sha256 "11d41e907cc29f8014a0c7ae85af1bdd7f9a41d42595b172fa34a849abf8939c"

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
