cask "swiftcord" do
  version "0.4.1,8"
  sha256 "110e6a28d0415e1c3b12007998d08c55062238d1d61b84a56b25a13b6ece0b8d"

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
