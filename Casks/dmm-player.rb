cask 'dmm-player' do
  version '2.0.5'
  sha256 '8605f5e38d014d49d93a062d5bb2c7f15184947d7eaa6ad6e732476930c8318d'

  url "http://portalapp.dmm.com/dmmplayerv#{version.major}/dmm/#{version.dots_to_underscores}/DMMPlayerV#{version.major}Installer_#{version.dots_to_underscores}.pkg"
  name 'DMM Player'
  homepage 'https://www.dmm.com/digital/howto_dmmplayer_html/'

  pkg "DMMPlayerV#{version.major}Installer_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.dmm.dmmplayerv*'
end
