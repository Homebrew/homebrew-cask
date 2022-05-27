cask "swiftcord" do
  version "0.4.0,7"
  sha256 "391c57db0800fc30aa9500d83752b143e2f7b9a0253ffbad2a81554ce0531caa"

  url "https://github.com/SwiftcordApp/Swiftcord/releases/download/v#{version.csv.first}/Swiftcord.#{version.csv.first}.dmg"
  name "Swiftcord"
  desc "Native Discord client built in Swift & SwiftUI"
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
