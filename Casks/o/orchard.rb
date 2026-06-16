cask "orchard" do
  version "1.12.2"
  sha256 "22070651f9f1fbfcd83c986db9cd9c5357ea5d672153d48c9fdd94ad5a4e171a"

  url "https://github.com/andrew-waters/orchard/releases/download/v#{version}/Orchard-#{version}.dmg"
  name "Orchard"
  desc "Native GUI for Apple Containers"
  homepage "https://github.com/andrew-waters/orchard"

  depends_on macos: :tahoe

  app "Orchard.app"

  zap trash: [
    "~/Library/Caches/container-compose.Orchard",
    "~/Library/Preferences/container-compose.Orchard.plist",
  ]
end
