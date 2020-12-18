cask "ipvanish-vpn" do
  version "3.2.0_b53150"
  sha256 "093037b730c6822e9fd2cb027d4e0541b14d4225674a54f4afb342c1eeb22a31"

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version}.zip"
  appcast "https://www.ipvanish.com/software/osx/updates.xml"
  name "IPVanish"
  homepage "https://www.ipvanish.com/"

  app "IPVanish VPN.app"
end
