cask 'autopano-pro' do
  version '4.4.2'
  sha256 'f4fae478d58b2a1a0f6422855b921723abcfaafffefaeccdc847ec0efc215424'

  url 'https://download.kolor.com/app/stable/mac'
  appcast "https://www.corecode.io/cgi-bin/check_urls/check_url_filename.cgi?url=#{url}"
  name 'Autopano Pro'
  homepage 'https://www.kolor.com/autopano/'

  pkg "Autopano Pro #{version.major_minor}.pkg"

  uninstall pkgutil: [
                       'com.kolor.pkg.AutopanoPro.*',
                       'com.kolor.pkg.Aperture_plugin',
                       'com.kolor.pkg.Bridge_plugin',
                       'com.kolor.pkg.Lightroom_plugin',
                       'com.kolor.pkg.plugin.picasa',
                     ]
end
