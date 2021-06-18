cask "bome-network" do
  version "1.4"
  sha256 "aaafa7d6744950664baed6c040dd442768c438692bc01842cec494e9eccb8162"

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
