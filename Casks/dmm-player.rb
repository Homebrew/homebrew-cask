cask 'dmm-player' do
  version '2.0.6'
  sha256 'a0749012c7dbd3df86a2c40a5543c943c4328fc12f4f4594798a794f57d40ca1'

  url "http://portalapp.dmm.com/dmmplayerv#{version.major}/dmm/#{version.dots_to_underscores}/DMMPlayerV#{version.major}Installer_#{version.dots_to_underscores}.pkg"
  name 'DMM Player'
  homepage 'https://www.dmm.com/digital/howto_dmmplayer_html/'

  pkg "DMMPlayerV#{version.major}Installer_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.dmm.dmmplayerv*'
end
