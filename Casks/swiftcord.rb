cask "swiftcord" do
  version "0.5.1,15"
  sha256 "e526fd9f9cca51f3a6d881d57ea5779eaab4900b23ee63dcc7fd8fb131ada1cd"

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

  caveats "If you're updating from an older version of Swiftcord, you might get stuck on the loading screen "\
          "due to a bug in the new account storage system. Clicking the logout button that appears after ~30s "\
          "is a workaround which will allow you to log in again. You'll only have to do this once."
end
