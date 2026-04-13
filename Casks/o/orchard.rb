cask "orchard" do
  version "1.11.3"
  sha256 "5cd9b84239a436c29814c852c4ba822112e9e0dca9eed7e9a0c28a2a50dd50de"

  url "https://github.com/andrew-waters/orchard/releases/download/v#{version}/Orchard-#{version}.dmg"
  name "Orchard"
  desc "Native GUI for Apple Containers"
  homepage "https://github.com/andrew-waters/orchard"

  depends_on macos: ">= :tahoe"

  app "Orchard.app"

  zap trash: [
    "~/Library/Caches/container-compose.Orchard",
    "~/Library/Preferences/container-compose.Orchard.plist",
  ]
end
