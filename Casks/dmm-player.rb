cask "dmm-player" do
  version "2.1.0"
  sha256 "0f7922d190330220dc8a157c30db214ee24236ead82b3f81429b27c507d98f4b"

  url "https://portalapp.dmm.com/dmmplayerv#{version.major}/dmm/#{version.dots_to_underscores}/DMMPlayerV#{version.major}Installer_#{version.dots_to_underscores}.pkg"
  name "DMM Player"
  desc "Video player for the DMM.com platform"
  homepage "https://www.dmm.com/digital/howto_dmmplayer_html/"

  pkg "DMMPlayerV#{version.major}Installer_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.dmm.dmmplayerv*"
end
