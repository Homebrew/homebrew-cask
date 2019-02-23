cask 'autopano-giga' do
  version '4.4.2'
  sha256 '0d5808f3904dae5937411ba7efdb275eaef2dea957c89b869c6c637aa29b824a'

  url 'http://download.kolor.com/apg/stable/mac'
  appcast "https://www.corecode.io/cgi-bin/check_urls/check_url_filename.cgi?url=#{url}"
  name 'Autopano Giga'
  homepage 'https://www.kolor.com/autopano/'

  pkg "Autopano Giga #{version.major_minor}.pkg"

  uninstall pkgutil: [
                       "com.kolor.pkg.AutopanoGiga.#{version.major_minor}",
                       'com.kolor.pkg.Bridge_plugin',
                       'com.kolor.pkg.Lightroom_plugin',
                       'com.kolor.pkg.plugin.picasa',
                     ]
end
