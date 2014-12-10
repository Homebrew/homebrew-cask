cask :v1 => 'google-hangouts' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/googletalk/googletalkplugin/GoogleVoiceAndVideoSetup.dmg'
  homepage 'https://www.google.com/tools/dlpage/hangoutplugin'
  license :unknown    # todo: improve this machine-generated value

  pkg 'Google Voice and Video.pkg'

  uninstall :pkgutil => 'com.google.pkg.GoogleVoiceAndVideo'
end
