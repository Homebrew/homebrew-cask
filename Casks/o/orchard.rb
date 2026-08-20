cask "orchard" do
  version "2.2.1"
  sha256 "849282e57541c2e3a6655e00022ac78dfab2f3c973f1a09f49070829b7b3f7e9"

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
