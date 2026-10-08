cask "swiftcord" do
  version "1.7.2,73"
  sha256 "15c0e4ad715d593e86691066fc4062d7cd63ba57daa4e079943444a8457f6d99"

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
