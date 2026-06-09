cask "maestri" do
  version "0.29.5"
  sha256 "b3dd527a71369812aa298d8bf991572d70400d9a24eb24b8326b217d23cabd40"

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
