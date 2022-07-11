cask "swiftcord" do
  version "0.4.3,10"
  sha256 "10413e0c7ead0ad4d5a56b744dc25baa4651a8b7e25523d97f46620fe171a206"

  url "https://github.com/SwiftcordApp/Swiftcord/releases/download/v#{version.csv.first}/Swiftcord.#{version.csv.first}.dmg"
  name "Swiftcord"
  desc "Native Discord client built in Swift"
  homepage "https://github.com/SwiftcordApp/Swiftcord"

  livecheck do
    url "https://raw.githubusercontent.com/SwiftcordApp/Swiftcord/main/appcast.xml"
    strategy :sparkle
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
