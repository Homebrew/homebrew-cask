cask 'dmm-player' do
  version '2.0.0'
  sha256 '5b5b472b670772c1d144c105bae5429ae85444d211cd02f83696449007ce198d'

  url "http://portalapp.dmm.com/dmmplayerv#{version.major}/dmm/#{version.dots_to_underscores}/DMMPlayerV#{version.major}Installer_#{version.dots_to_underscores}.pkg"
  name 'DMM Player'
  homepage 'https://www.dmm.com/digital/howto_dmmplayer_html/'

  pkg "DMMPlayerV#{version.major}Installer_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.dmm.dmmplayerv*'
end
