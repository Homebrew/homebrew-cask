cask "bome-network" do
  version "1.7.0"
  sha256 "0c2f6d336c227f1dfcc9c6db88e8daa2de7503f3931fae0868f06630d3215ce3"

  url "https://download.bome.com/BomeNet#{version}_macOS.dmg"
  name "Bome Network"
  desc "Create MIDI connections between computers"
  homepage "https://www.bome.com/products/bomenet"

  livecheck do
    url :homepage
    regex(%r{href=.*?/BomeNet(\d+(?:\.\d+)+)[._-]macOS\.dmg}i)
  end

  depends_on :macos

  app "Bome Network.app"

  zap trash: "~/Library/Preferences/com.bome.mt.player.plist"
end
