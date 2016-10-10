cask 'dmm-player' do
  version '1.6.0.2'
  sha256 '3acbcf81b439c60013685c3243820e4906a3f2eff176d63b55b31ad0fd06abdf'

  url "http://portalapp.dmm.com/silverlightplayer/dmm/m/#{version.dots_to_underscores}/DMMPlayerInstaller_#{version.dots_to_underscores}.pkg"
  name 'DMM Player'
  homepage 'https://www.dmm.com/digital/howto_dmmplayer_html/'

  pkg "DMMPlayerInstaller_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.apple.ScriptEditor.id.DMMPlayer*'
end
