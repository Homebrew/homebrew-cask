cask "apple-juice" do
  version "2020.11.2"
  sha256 "7cb78a49500525d4189e69b4694f20f959356672faac8727675da7b5c08e8949"

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
