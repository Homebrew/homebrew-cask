cask "swiftcord" do
  version "0.4.2,9"
  sha256 "f8af3765835a9f116a551ec65ec12764395c10460dc118a83abb6639cff84056"

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
    "~/Library/Application Scripts/com.cryptoalgo.swiftcord",
    "~/Library/Caches/com.cryptoalgo.swiftcord",
    "~/Library/Containers/com.cryptoalgo.swiftcord",
    "~/Library/Saved Application State/com.cryptoalgo.swiftcord.savedState",
  ]
end
