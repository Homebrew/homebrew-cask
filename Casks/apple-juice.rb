cask "apple-juice" do
  version "2020.12.0"
  sha256 "32aff8e2b2de61076fca1243091ab6e0166d38b4657afedcf01ae28133b69cae"

  url "https://github.com/raphaelhanneken/apple-juice/releases/download/#{version}/Apple.Juice.dmg"
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
