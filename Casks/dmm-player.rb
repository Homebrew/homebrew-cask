cask "dmm-player" do
  version "2.1.1"
  sha256 "a1ddedd5dc85cb89d46f35ad6a13c21ba3c1c4bd426566a444acd316cafe0f68"

  url "https://portalapp.dmm.com/dmmplayerv#{version.major}/dmm/#{version.dots_to_underscores}/DMMPlayerV#{version.major}Installer_#{version.dots_to_underscores}.pkg"
  name "DMM Player"
  desc "Video player for the DMM.com platform"
  homepage "https://www.dmm.com/digital/howto_dmmplayer_html/"

  pkg "DMMPlayerV#{version.major}Installer_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.dmm.dmmplayerv*"
end
