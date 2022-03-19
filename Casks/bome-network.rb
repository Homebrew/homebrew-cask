cask "bome-network" do
  version "1.4.2"
  sha256 "d6e336ddb349c29ebdffac841a9996fcc6550ad931bf1697acb3cfef82624390"

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
