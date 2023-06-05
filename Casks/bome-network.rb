cask "bome-network" do
  version "1.5.0"
  sha256 "baa91064e83f144feb5501f7e24dad7bbb7cc8969987f6286662387e06bed11d"

  url "https://download.bome.com/BomeNet#{version}.dmg"
  name "Bome Network"
  desc "Create MIDI connections between computers"
  homepage "https://www.bome.com/products/bomenet"

  livecheck do
    url "https://www.bome.com/products/bomenet#downloads"
    regex(%r{href=.*?/BomeNet(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Bome Network.app"

  zap trash: "~/Library/Preferences/com.bome.mt.player.plist"
end
