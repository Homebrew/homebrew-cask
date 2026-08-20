cask "orchard" do
  version "2.1.7"
  sha256 "5fe684dfffb76e2e751a2ae6757234ea4ec6715e9f2d1107e30ae8727434ebb4"

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
