cask "swiftcord" do
  version "1.8.0,78"
  sha256 "803552dc10db212a08b6e262a31854cab6fa1f1ae27f1e278081d893594726b2"

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
