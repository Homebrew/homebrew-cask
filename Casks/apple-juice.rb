cask "apple-juice" do
  version "2020.11"
  sha256 "cdbfc948c76ad5777e5780c0411236c29c30ad606865a4e0c7a53c98cf5a60dc"

  url "https://github.com/raphaelhanneken/apple-juice/releases/download/#{version}/Apple.Juice.dmg"
  appcast "https://github.com/raphaelhanneken/apple-juice/releases.atom"
  name "Apple Juice"
  desc "Battery gauge that displays the remaining battery time and more"
  homepage "https://github.com/raphaelhanneken/apple-juice"

  depends_on macos: ">= :sierra"

  app "Apple Juice.app"

  uninstall quit: "io.raphaelhanneken.applejuice"

  zap trash: [
    "~/Library/Caches/io.raphaelhanneken.applejuice",
    "~/Library/Preferences/io.raphaelhanneken.applejuice.plist",
  ]
end
