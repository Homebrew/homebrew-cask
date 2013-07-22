class GoogleHangouts < Cask
  url 'https://dl.google.com/googletalk/googletalkplugin/GoogleVoiceAndVideoSetup.dmg'
  homepage 'https://www.google.com/tools/dlpage/hangoutplugin'
  version 'latest'
  no_checksum
  install 'Google Voice and Video.pkg'
  uninstall 'GoogleVoiceAndVideoUninstaller.app'
end
