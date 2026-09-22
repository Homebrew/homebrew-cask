cask "orchard" do
  version "2.4.3"
  sha256 "9b6a6312ca5fda5be64fb956c2deca7308d9d8901d5a0645b97ed1adca3835cb"

  url "https://github.com/andrew-waters/orchard/releases/download/v#{version}/Orchard-#{version}.dmg"
  name "Orchard"
  desc "Native GUI for Apple Containers"
  homepage "https://github.com/andrew-waters/orchard"

  depends_on macos: :tahoe

  app "Orchard.app"

  zap trash: [
    "~/Library/Application Support/Orchard",
    "~/Library/Caches/container-compose.Orchard",
    "~/Library/Preferences/container-compose.Orchard.plist",
  ]
end
