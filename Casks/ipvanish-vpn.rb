cask "ipvanish-vpn" do
  version "3.2.1,57174"
  sha256 "ee3eb71fdf2624a13eb6dada48ba3ab03ebb4ab9b95e2b5c658f9ad37beda5fe"

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version.before_comma}_b#{version.after_comma}.zip"
  name "IPVanish"
  homepage "https://www.ipvanish.com/"

  livecheck do
    url "https://www.ipvanish.com/software/osx/updates.xml"
    strategy :sparkle
  end

  app "IPVanish VPN.app"
end
