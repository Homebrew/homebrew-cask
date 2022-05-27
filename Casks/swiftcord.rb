cask "swiftcord" do
  version "0.4.0"
  sha256 "391c57db0800fc30aa9500d83752b143e2f7b9a0253ffbad2a81554ce0531caa"

  url "https://github.com/SwiftcordApp/Swiftcord/releases/download/v#{version}/Swiftcord.#{version}.dmg"
  name "Swiftcord"
  desc "A native Discord client for macOS built in Swift & SwiftUI"
  homepage ""

  livecheck do
    url "https://raw.githubusercontent.com/SwiftcordApp/Swiftcord/main/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :monterey"

  app "Swiftcord.app"
end
