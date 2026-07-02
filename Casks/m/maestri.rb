cask "maestri" do
  version "0.30.13"
  sha256 "68b9385a1f7cccff7fdc7a420c5147d79d4a2fd80b7c555b0cd4337f27b80bc9"

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
