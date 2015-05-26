cask :v1 => 'google-hangouts' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/googletalk/googletalkplugin/GoogleVoiceAndVideoSetup.dmg'
  name 'Google Hangouts'
  homepage 'https://www.google.com/tools/dlpage/hangoutplugin'
  license :gratis
  tags :vendor => 'Google'

  pkg 'Google Voice and Video.pkg'

  uninstall :pkgutil => 'com.google.pkg.GoogleVoiceAndVideo'
end
