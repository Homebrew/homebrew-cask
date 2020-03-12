cask 'dmm-player' do
  version '2.0.8'
  sha256 '4309deb1c2ca0a4e9ade8147b229056b6719cc79b9746cbd01dfefd7f7f66e83'

  url "https://portalapp.dmm.com/dmmplayerv#{version.major}/dmm/#{version.dots_to_underscores}/DMMPlayerV#{version.major}Installer_#{version.dots_to_underscores}.pkg"
  name 'DMM Player'
  homepage 'https://www.dmm.com/digital/howto_dmmplayer_html/'

  pkg "DMMPlayerV#{version.major}Installer_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.dmm.dmmplayerv*'
end
