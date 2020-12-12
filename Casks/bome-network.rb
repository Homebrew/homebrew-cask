cask "bome-network" do
  version "1.2.1"
  sha256 "be2549d8ad526f0e08ef136edf785005840ad3c554de68583788f89714744d5c"

  url "https://download.bome.com/BomeNet#{version}.dmg"
  appcast "https://www.bome.com/products/bomenet#downloads"
  name "Bome Network"
  desc "Create MIDI connections between computers"
  homepage "https://www.bome.com/products/bomenet"

  app "Bome Network.app"

  zap trash: "~/Library/Preferences/com.bome.mt.player.plist"
end
