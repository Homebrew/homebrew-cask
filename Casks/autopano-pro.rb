cask 'autopano-pro' do
  version '4.4.2.400,2018-09-10'
  sha256 'f4fae478d58b2a1a0f6422855b921723abcfaafffefaeccdc847ec0efc215424'

  url "https://cdn-download.kolor.com/app/#{version.before_comma}_#{version.after_comma}/AutopanoPro_Mac_#{version.major_minor_patch.no_dots}_#{version.after_comma}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://download.kolor.com/app/stable/mac'
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
