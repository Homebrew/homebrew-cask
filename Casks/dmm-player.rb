cask "dmm-player" do
  version "2.1.3"
  sha256 "9152480dbb4cf6d629cf0d18f946672a88a54145116d8e098f7938752daf4380"

  url "https://portalapp.dmm.com/dmmplayerv#{version.major}/dmm/#{version.dots_to_underscores}/DMMPlayerV#{version.major}Installer_#{version.dots_to_underscores}.pkg"
  name "DMM Player"
  desc "Video player for the DMM.com platform"
  homepage "https://www.dmm.com/digital/howto_dmmplayer_html/"

  pkg "DMMPlayerV#{version.major}Installer_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.dmm.dmmplayerv*"
end
