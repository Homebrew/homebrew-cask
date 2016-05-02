cask 'dmm-player' do
  version '1_6_0_2'
  sha256 '3acbcf81b439c60013685c3243820e4906a3f2eff176d63b55b31ad0fd06abdf'

  url "http://portalapp.dmm.com/silverlightplayer/dmm/m/#{version}/DMMPlayerInstaller_#{version}.pkg"
  name 'DMM Player'
  homepage 'http://www.dmm.com/digital/howto_dmmplayer_html/'
  license :gratis

  pkg "DMMPlayerInstaller_#{version}.pkg"

  uninstall pkgutil: 'com.apple.ScriptEditor.id.DMMPlayer*'
end
