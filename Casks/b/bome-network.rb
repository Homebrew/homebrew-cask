cask "bome-network" do
  version "1.6.0"
  sha256 "24f99bdf3356bf1218c65b315ca63085d8d41cd21f73a67c374cd73acf02d959"

  url "https://download.bome.com/BomeNet#{version}_macOS.dmg"
  name "Bome Network"
  desc "Create MIDI connections between computers"
  homepage "https://www.bome.com/products/bomenet"

  livecheck do
    url :homepage
    regex(%r{href=.*?/BomeNet(\d+(?:\.\d+)+)[._-]macOS\.dmg}i)
  end

  app "Bome Network.app"

  zap trash: "~/Library/Preferences/com.bome.mt.player.plist"
end
