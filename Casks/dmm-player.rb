cask 'dmm-player' do
  version '2.0.3'
  sha256 'a630e615494f071f4eca389819ec0912107dd2f200d84a3d32703fa1d2d0ca9c'

  url "http://portalapp.dmm.com/dmmplayerv#{version.major}/dmm/#{version.dots_to_underscores}/DMMPlayerV#{version.major}Installer_#{version.dots_to_underscores}.pkg"
  name 'DMM Player'
  homepage 'https://www.dmm.com/digital/howto_dmmplayer_html/'

  pkg "DMMPlayerV#{version.major}Installer_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.dmm.dmmplayerv*'
end
