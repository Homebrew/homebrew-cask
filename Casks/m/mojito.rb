cask "mojito" do
  version "1.8.0"
  sha256 "596efdb2f3b80562cc6137e54560fff3f2268fda2a55ed4c81d1c297aadccb71"

  url "https://github.com/wr/mojito/releases/download/v#{version}/Mojito.dmg",
      verified: "github.com/wr/mojito/"
  name "Mojito"
  desc "Type :emoji:, ::symbol::, and :::gif::: shortcodes in any text field"
  homepage "https://mojito.wells.ee/"

  livecheck do
    url "https://mojito.wells.ee/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Mojito.app"

  uninstall quit: "ee.wells.Mojito"

  zap trash: [
    "~/Library/Caches/ee.wells.Mojito",
    "~/Library/HTTPStorages/ee.wells.Mojito",
    "~/Library/Preferences/ee.wells.Mojito.plist",
  ]
end
