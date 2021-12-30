cask "dmm-player" do
  version "2.1.9"
  sha256 "420aaef55b881cd6f9a648a71e9604d2a8db758db835baff24b62e8ea3a64090"

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
