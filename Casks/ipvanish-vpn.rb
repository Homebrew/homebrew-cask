cask "ipvanish-vpn" do
  version "3.3.0,67479"
  sha256 "d738cc5db300b512c2329d349e5c4df7dfaba78935e09b89a90f98974ddada5f"

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version.before_comma}_b#{version.after_comma}.zip"
  name "IPVanish"
  homepage "https://www.ipvanish.com/"

  livecheck do
    url "https://www.ipvanish.com/software/osx/updates.xml"
    strategy :sparkle
  end

  app "IPVanish VPN.app"
end
