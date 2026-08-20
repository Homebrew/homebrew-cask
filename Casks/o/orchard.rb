cask "orchard" do
  version "2.2.0"
  sha256 "f44e473f4740c1514829b719004e94222112351850af750deb2619c93671a294"

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
