cask "swiftcord" do
  version "0.6.1"
  sha256 "6da79f88930ce384a58c3fd902f75ad64ef0b9e015aa547db6a85af7d46b2032"

  url "https://github.com/SwiftcordApp/Swiftcord/releases/download/v#{version}/Swiftcord.#{version}.dmg"
  name "Swiftcord"
  desc "Native Discord client built in Swift"
  homepage "https://github.com/SwiftcordApp/Swiftcord"

  livecheck do
    url "https://raw.githubusercontent.com/SwiftcordApp/Swiftcord/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :monterey"

  app "Swiftcord.app"

  zap trash: [
    "~/Library/Application Scripts/io.cryptoalgo.swiftcord",
    "~/Library/Caches/io.cryptoalgo.swiftcord",
    "~/Library/Containers/io.cryptoalgo.swiftcord",
    "~/Library/Saved Application State/io.cryptoalgo.swiftcord.savedState",
  ]
end
