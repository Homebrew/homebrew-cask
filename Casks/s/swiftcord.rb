cask "swiftcord" do
  version "0.7.1"
  sha256 "36d9f9fbed2ab3e124c69e7ef16b5f3f6979fa6c576e6ad005ff34c1738a2961"

  url "https://github.com/SwiftcordApp/Swiftcord/releases/download/v#{version}/Swiftcord.zip"
  name "Swiftcord"
  desc "Native Discord client built in Swift"
  homepage "https://github.com/SwiftcordApp/Swiftcord"

  # https://github.com/SwiftcordApp/Swiftcord/discussions/189
  disable! date: "2024-11-23", because: :unmaintained

  depends_on macos: ">= :monterey"

  app "Swiftcord.app"

  zap trash: [
    "~/Library/Application Scripts/io.cryptoalgo.swiftcord",
    "~/Library/Caches/io.cryptoalgo.swiftcord",
    "~/Library/Containers/io.cryptoalgo.swiftcord",
    "~/Library/Saved Application State/io.cryptoalgo.swiftcord.savedState",
  ]
end
