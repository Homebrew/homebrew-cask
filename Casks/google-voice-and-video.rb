class GoogleVoiceAndVideo < Cask
  url 'https://dl.google.com/googletalk/googletalkplugin/GoogleVoiceAndVideoSetup.dmg'
  homepage 'http://www.google.com/chat/voice/'
  version 'latest'
  no_checksum
  install 'Google Voice and Video.pkg'
  uninstall :pkgutil => 'com.google.pkg.GoogleVoiceAndVideo'
end
