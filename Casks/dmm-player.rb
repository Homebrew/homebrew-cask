cask "dmm-player" do
  version "2.2.0"
  sha256 "ea7f3914a7130b480806e8452d1517d07596116478a9136441c6050bbffd97ff"

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
