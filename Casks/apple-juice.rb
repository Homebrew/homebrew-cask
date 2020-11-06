cask "apple-juice" do
  version "1.10.2"
  sha256 "dedbbf56a4d972ed0ad987be5b2577f2c59c55b0b9e4effd05c60f3c29773677"

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
