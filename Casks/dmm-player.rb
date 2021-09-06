cask "dmm-player" do
  version "2.1.8"
  sha256 "ac45719e1fe4d225fe813d2abdff3e5f34fb23253f3d1f960fe981c68e8c1e3b"

  url "https://portalapp.dmm.com/dmmplayerv#{version.major}/dmm/#{version.dots_to_underscores}/DMMPlayerV#{version.major}Installer_#{version.dots_to_underscores}.pkg"
  name "DMM Player"
  desc "Video player for the DMM.com platform"
  homepage "https://www.dmm.com/digital/howto_dmmplayer_html/"

  livecheck do
    url "https://www.dmm.com/digital/-/dmmplayerv2inst/=/type=v2_mac/"
    strategy :header_match
  end

  pkg "DMMPlayerV#{version.major}Installer_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.dmm.dmmplayerv*"
end
