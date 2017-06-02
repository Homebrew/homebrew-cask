cask 'autopano-giga' do
  version '4.4.1.400,2017-05-16'
  sha256 '49bb5e5981d1eef950373a21ebb6a7fdada879b8a8fa3936556875ec4ecad75c'

  url "http://cdn-download.kolor.com/apg/#{version.before_comma}_#{version.after_comma}/AutopanoGiga_Mac_#{version.major_minor_patch.no_dots}_#{version.after_comma}.dmg"
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
