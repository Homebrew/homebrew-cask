cask 'dmm-player' do
  version '1.6.0.4'
  sha256 '177c5b190ce71d6fdff99a6cc78b14e3948bb606ad00dbedd8c02e07807b3d16'

  url "http://portalapp.dmm.com/silverlightplayer/dmm/m/#{version.dots_to_underscores}/DMMPlayerInstaller_#{version.dots_to_underscores}.pkg"
  name 'DMM Player'
  homepage 'https://www.dmm.com/digital/howto_dmmplayer_html/'

  pkg "DMMPlayerInstaller_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: [
                       'com.apple.ScriptEditor.id.DMMPlayer*',
                       '3117044984.dmm.player.dmm.com',
                     ]
end
