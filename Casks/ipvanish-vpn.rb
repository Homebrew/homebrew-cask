cask "ipvanish-vpn" do
  version "3.2.2,59381"
  sha256 "b12ea1556d59f7feebff931d820bf3ee8593f20b6dcf49aa2307c3b22c5d8e0a"

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version.before_comma}_b#{version.after_comma}.zip"
  name "IPVanish"
  homepage "https://www.ipvanish.com/"

  livecheck do
    url "https://www.ipvanish.com/software/osx/updates.xml"
    strategy :sparkle
  end

  app "IPVanish VPN.app"
end
