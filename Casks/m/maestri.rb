cask "maestri" do
  version "0.32.1"
  sha256 "e0248a12585660d2d0bb06202cd03ce7ae6d8cc156a61554b4b82785050fc9ef"

  url "https://pub-84eb0b1f3fb3420bbe57a88de7443b71.r2.dev/downloads/Maestri-#{version}.zip",
      verified: "pub-84eb0b1f3fb3420bbe57a88de7443b71.r2.dev/downloads/"
  name "Maestri"
  desc "Canvas for agent orchestration"
  homepage "https://www.themaestri.app/"

  livecheck do
    url "https://pub-84eb0b1f3fb3420bbe57a88de7443b71.r2.dev/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Maestri.app"

  zap trash: [
    "~/.maestri",
    "~/Library/Caches/com.evercraftlabs.Maestro",
    "~/Library/HTTPStorages/com.evercraftlabs.Maestro",
    "~/Library/Preferences/com.evercraftlabs.Maestro.plist",
  ]
end
